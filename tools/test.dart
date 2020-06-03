import 'dart:collection';

void main() {
  var c = MyClass(UnmodifiableListView([1, 2, 3]));
  c.list[1] =1;
}


class MyClass {
  final UnmodifiableListView<int> list;

  MyClass(this.list);
}
