import '../../reverse_engineering/cipher/cipher_operations.dart';
import '../../reverse_engineering/responses/responses.dart';

///
class StreamContext {
  ///
  final Iterable<StreamInfoProvider> streamInfoProviders;

  ///
  final Iterable<CipherOperation> cipherOperations;

  ///
  StreamContext(this.streamInfoProviders, this.cipherOperations);
}
