## 1.3.1
- Implement caching of some results.

## 1.3.0
- Added api get youtube comments of a video.

## 1.2.3
- Fix duplicated bytes when downloading a stream. See [#41][Comment41]

## 1.2.2
- Momentarily ignore `isRateLimited()` when getting streams.

## 1.2.1

- Fixed `SearchPage.nextPage`.
- Added more tests.

## 1.2.0
- Improved documentation.
- Deprecated `StreamInfoExt.getHighestBitrate`, use list.`sortByBitrate`.
- Implemented `withHighestBitrate` and `sortByBitrate` for `StreamInfo` iterables.
- Implemented `withHighestBitrate` for `VideoStreamInfo` iterables.
- Now `sortByVideoQuality` returns a List of `T`.
- `SearchQuery.nextPage` now returns null if there is no next page. 

## 1.1.0
- Implement parsing of the search page to retrieve information from youtube searches. See `SearchQuery`.


## 1.0.0
- Stable release

---

## 1.0.0-beta

- Updated to v5 of YouTube Explode for C#

## 1.0.1-beta

- Implement `SearchClient`.
- Implement `VideoStreamInfoExtension` for Iterables.
- Update `xml` dependency.
- Fixed closed caption api.

## 1.0.2-beta

- Fix video likes and dislikes count. #30
<hr>

## 0.0.1

- Initial version, created by Stagehand

## 0.0.2

- Implement channel api

## 0.0.3

- Remove `dart:io` dependency.

## 0.0.4

- Fix #3 : Head request to ge the content length
- Fix error when getting videos without any keyword.

## 0.0.5

- Implement Search Api (`SearchExtension`)

## 0.0.6

- Implement Caption Api ('CaptionExtension`)
- Add Custom Exceptions

## 0.0.7

- Implement Video Purchase error
- Implement Equatable for models

## 0.0.8

- Downgrade xml to `^3.5.0`

## 0.0.9

- Bug Fix(PR [11][11]): Use url when retrieving the video's content length.

[11]: https://github.com/Hexer10/youtube_explode_dart/pull/11

## 0.0.10

- Bug fix: Don't throw when captions are not present.
- New extension: CaptionListExtension adding `getByTime` function.

## 0.0.11

- New extension: DownloadExtension adding `downloadStream` function.

## 0.0.12

- Bug fix(#15): Fix invalid upload date.

## 0.0.13

- Bug fix(#15): Fix valid channel expression

## 0.0.14

- getChannelWatchPage and getVideoWatchPage methods are now public
- New method: getChannelIdFromVideo

## 0.0.15

- Workaround (#15): Now when a video is not available a `VideoUnavailable` exception is thrown
- Removed disable_polymer parameter when requests ( https://github.com/Tyrrrz/YoutubeExplode/issues/341 )
- Removed `dart:io` dependency

## 0.0.16

- When a video is not available(403) a `VideoStreamUnavailableException` 

## 0.0.17

- Fixed bug in #23



[Comment41]: https://github.com/Hexer10/youtube_explode_dart/issues/41#issuecomment-646974990