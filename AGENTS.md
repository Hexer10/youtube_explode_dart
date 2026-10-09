# AGENTS.md

Guidelines for changes to `youtube_explode_dart`. This is a Dart port of YoutubeExplode: it reads YouTube metadata, streams, captions, playlists, channels, and search by parsing pages and Innertube responses. It does not use the official YouTube Data API.

Keep the public API stable. YouTube's HTML and JSON change often; isolate that fragility inside reverse engineering.

## Layout

```
lib/youtube_explode_dart.dart   public library
lib/solvers.dart                 optional JS solvers (not in the main library)
lib/js_challenge.dart            challenge interfaces for custom solvers
lib/src/youtube_explode_base.dart
lib/src/videos|playlists|channels|search|common|exceptions   public domain
lib/src/reverse_engineering      internal parsing, cipher, HTTP, challenges
lib/src/extensions               parsing helpers
test/                            dart test
```

`YoutubeExplode` owns one `YoutubeHttpClient` and the domain clients (`videos`, `playlists`, `channels`, `search`). Callers must be able to `close()` it; `close()` closes the HTTP client and disposes the JS solver.

## Dependency direction

Public code may call reverse engineering. Reverse engineering must not grow new public behavior.

1. **Domain client** (`VideoClient`, `StreamClient`, `PlaylistClient`, `ChannelClient`, `SearchClient`): validate ids, call a page or Innertube client, map the result to a public model. No HTML or JSON parsing here.
2. **Page / response parser** (`WatchPage`, `PlaylistPage`, `YoutubePage`, player response): extract fields from HTML, `ytInitialData`, or player JSON. Multiple fallbacks are expected (initial data, then regex, then DOM).
3. **`YoutubeHttpClient`**: headers, status checks, body download. All YouTube HTTP goes through it.
4. **`retry()`** in `lib/src/retry.dart`: wrap network calls that should survive a transient failure. Do not invent a second retry loop.

A new feature follows that order: parser first, then client method, then export only if callers need it.

## Public API

- Export a type only from the matching barrel (`channels.dart`, `videos.dart`, `streams.dart`, …) and from `lib/youtube_explode_dart.dart`. Page parsers, cipher, and player JSON stay unexported.
- JS runtimes stay out of the main library. A solver implements `BaseJSChallengeSolver` and is exported from `lib/solvers.dart` or supplied by the caller via `lib/js_challenge.dart`.
- Public methods that take an id accept the same inputs as today: a raw id, a URL, or the value object. Normalize with `VideoId.fromString`, `PlaylistId.fromString`, or `ChannelId.fromString` at the boundary.
- Ids and URLs are validated in the value object. Invalid input throws `ArgumentError`. `toString()` returns the raw id.
- Public models that leave the library are `@freezed` and immutable. Generated `*.freezed.dart` and `*.g.dart` are committed. Regenerate with `dart run build_runner build --delete-conflicting-outputs`. Do not edit generated files.
- Mark types that must not be used by callers with `@internal`.
- Document every new public member with a `///` comment that states what it returns and when it fails.
- A behavior change that callers can observe is a changelog entry under a new version heading in `CHANGELOG.md`.
- Removing or renaming a public member needs a major version. Until then, keep the old member and mark it `@Deprecated` with the replacement, as with `CommentsClient` and `YoutubeApiClient.androidSdkless`.

## Streams and Innertube clients

`YoutubeApiClient` is the catalog of client payloads (`context`, `apiUrl`, `headers`). Add a client there as a `static const` or `static final`. Document which streams it returns and whether the CDN accepts the URLs.

`StreamClient.getManifest` chooses clients when `ytClients` is null. Defaults today: `visionos` and `androidVr`, plus `safari` when a JS solver is present. Android adaptive URLs are often rejected with HTTP 403; do not switch the default to `android` or `androidSdkless`.

When a client stops working, deprecate it and name the replacement. Do not delete the payload in a patch release.

Signature deciphering and JS challenges go through `BaseJSChallengeSolver`. If a client needs a decipher and no solver was passed, fetch the watch page and use the built-in cipher path already in `StreamClient`.

## Errors

Throw a subclass of `YoutubeExplodeException`. The message says whether the failure is on YouTube's side or a library bug, and includes the request when it came from HTTP.

| Situation | Type | `retry()` cost |
|---|---|---|
| HTTP 5xx | `TransientFailureException` | 1 |
| HTTP 429 or `/sorry/` | `RequestLimitExceededException` | 2 |
| HTTP 4xx | `FatalFailureException` | 3 |
| Video unplayable | `VideoUnplayableException` | 5 (no further retries) |
| Client already closed | `HttpClientClosedException` | never retry |

`retry()` starts at 5 and subtracts that cost. A new exception that should fail fast needs a cost in `getExceptionCost`.

## Parsing

- Prefer structured data (`ytInitialData`, player response) and keep a DOM or regex fallback for fields YouTube moves.
- Shared string and JSON helpers belong on the extensions in `lib/src/extensions/helpers_extension.dart` (`nullIfWhitespace`, `extractJson`, duration parsing). Do not copy those snippets into a page class.
- A missing optional field becomes null or an empty list. A missing field required to build the public model throws a domain exception that asks the caller to report the issue.
- Log with `Logger('YoutubeExplode.<Area>')`. Do not `print`.

## Style

`analysis_options.yaml` includes `package:lints/recommended.yaml` and sets `prefer_relative_imports: true`. Use relative imports inside `lib/src`.

- `strict-casts` is off and `avoid_dynamic_calls` is off because page JSON is dynamic. New public signatures stay typed. `dynamic` is only for the id-or-URL entry points.
- Stream capabilities are mixins (`StreamInfo`, `VideoStreamInfo`, `AudioStreamInfo`). Concrete formats are types under `streams/types` (muxed, audio-only, video-only, HLS). Extend the mixin when every format shares the field; add a type when the format differs.
- Paged results extend `BasePagedList` and implement `nextPage()`.
- Run `dart analyze` on the files you change. Analyzer excludes `*.g.dart` and `*.freezed.dart`.

## Tests

`dart test` is the suite CI runs.

- Id parsing, URL parsing, and pure mapping use fixtures in `test/data.dart` and do not touch the network.
- Tests that request YouTube pass `skip: skipGH` (`test/skip_gh.dart`). GitHub Actions is blocked by YouTube.
- A parser fix adds a case to the existing group, or a fixture, for the page shape that broke.

## Change size

Fix the extraction that failed. Do not reformat an unrelated client, rename public fields, or swap default Innertube clients in the same change.

Before finishing:

1. The new parse path lives under `reverse_engineering`, and the public client only maps its result.
2. Public exports and deprecations match the version bump.
3. `dart analyze` is clean on the edited Dart files.
4. Unit tests cover the new id or parser branch; live tests still skip on GitHub Actions.
