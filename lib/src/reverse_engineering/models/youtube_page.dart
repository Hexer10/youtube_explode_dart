import 'package:html/dom.dart';
import 'package:meta/meta.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import 'initial_data.dart';

/// Generic class to handle the various youtube pages.
abstract class YoutubePage<T extends InitialData> {
  @protected
  final Document? root;

  @protected
  late final T initialData = _defaultInitialData ?? _getInitialData();

  final T? _defaultInitialData;

  @protected
  final T Function(JsonMap)? initialDataBuilder;

  T _getInitialData() {
    final scriptText = root!
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);
    return scriptText.extractGenericData(
      ['var ytInitialData = ', 'window["ytInitialData"] ='],
      initialDataBuilder!,
      () => TransientFailureException(
        'Failed to retrieve initial data from $runtimeType, please report this to the project GitHub page.',
      ),
    );
  }

  YoutubePage(this.root, this.initialDataBuilder, [this._defaultInitialData])
      : assert(
          (root != null && initialDataBuilder != null) ||
              _defaultInitialData != null,
        );
}
