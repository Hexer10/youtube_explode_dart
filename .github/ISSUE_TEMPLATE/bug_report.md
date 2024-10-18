---
name: Bug report
about: Create a bug report, make sure to follow the template otherwise the issue might be closed.
title: "[BUG]"
labels: bug
assignees: ''

---



**Describe the bug**
A clear and concise description of what the bug is.

**To Reproduce**
Include the code which doesn't work in the code markdown...
```dart

```

**Stacktrace**
Include here the stacktrace (if applicable). 
Include also the full logs by adding the following lines to the start of your code:
```dart
  Logger.root.level = Level.FINER;
  Logger.root.onRecord.listen((e)  {
    print(e);
    if (e.error != null) {
     print(e.error);
     print(e.stackTrace);
    }
  });
```
If too long please use a service like https://gist.github.com/ or https://pastebin.com/

**Enviroment: (please complete the following information):**
 - Enviroment: [Flutter o Dart VM]
 - Version [e.g. 2.8.4]
 - YoutubeExplode Version [e.g. ^2.5.0]

**Additional context**
Add any other context about the problem here.
