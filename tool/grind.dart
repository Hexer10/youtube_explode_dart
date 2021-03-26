import 'package:grinder/grinder.dart';

final pub = sdkBin('pub');
void main(List<String> args) => grind(args);

@Task('Run tests')
void test() => TestRunner().testAsync();

@Task('Dart analysis')
void analysis() {}

@DefaultTask()
@Depends(test)
void build() {
  Pub.build();
  Pub.upgrade();
  Pub.version();
}

@Task()
void clean() => defaultClean();
