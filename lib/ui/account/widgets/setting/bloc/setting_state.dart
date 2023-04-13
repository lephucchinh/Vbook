part of 'setting_bloc.dart';

class SettingState extends Equatable {
  const SettingState._( {
    required this.selectedColor,
    required this.status,
  });

  SettingState.initial({this.selectedColor = 1}) :
        status = CommonStatus.initial;


  final CommonStatus status;
  final int selectedColor;

  SettingState copyWith({
    CommonStatus? status,
    int? selectedColor,
  }) {
    return SettingState._(
        status: status ?? this.status,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }

  @override
  List<Object?> get props => [];
}
