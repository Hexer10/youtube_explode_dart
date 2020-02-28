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