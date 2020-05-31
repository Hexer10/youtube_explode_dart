//void main() {
//  e().catchError(
//        (onError) {
//      print("called when there is an error catches error");
//      return Future.error('error');
//    },
//  ).then((value) {
//    print("called with value = null");
//  }).whenComplete(() {
//    print("called when future completes");
//  });
//}

void main() async {
  try {
    await someFuture();
  } catch (e) {
    print("called when there is an error catches error: $e");
    try {
      print("called with value = null");
    } finally {
      print("called when future completes");
    }
  }
}

Future f() {
  return Future.value(5);
}

Future someFuture() {
  return Future.error('Error occured');
}
