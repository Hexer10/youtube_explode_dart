import 'package:equatable/equatable.dart';

/// YouTube channel about metadata.
class ChannelAbout with EquatableMixin {
  /// Channel description.
  final String description;

  /// Initializes an instance of [ChannelAbout]
  ChannelAbout(this.description);

  @override
  List<Object> get props => [description];
}
