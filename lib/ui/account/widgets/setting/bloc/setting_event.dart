part of 'setting_bloc.dart';

abstract class SettingEvent extends Equatable {
  const SettingEvent(this.context);

  final BuildContext context;
}

class ColorButtonPressed extends SettingEvent {
  ColorButtonPressed(super.context, {required this.index});

  final int index;
  @override
  List<Object?> get props => [super.context,index];
}
