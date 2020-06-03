import '../../reverse_engineering/reverse_engineering.dart';

///
class StreamContext {
  ///
  final Iterable<StreamInfoProvider> streamInfoProviders;

  ///
  final Iterable<CipherOperation> cipherOperations;

  ///
  StreamContext(this.streamInfoProviders, this.cipherOperations);
}
