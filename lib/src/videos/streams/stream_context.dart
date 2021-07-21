import '../../reverse_engineering/cipher/cipher_operations.dart';
import '../../reverse_engineering/models/stream_info_provider.dart';

///
class StreamContext {
  ///
  final Iterable<StreamInfoProvider> streamInfoProviders;

  ///
  final Iterable<CipherOperation> cipherOperations;

  ///
  StreamContext(this.streamInfoProviders, this.cipherOperations);
}
