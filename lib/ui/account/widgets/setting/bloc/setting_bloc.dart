import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/common/enum/common_status.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState.initial()) {
    on<ColorButtonPressed>(_onColorButtonPressed);
  }
  _onColorButtonPressed(ColorButtonPressed event,Emitter<SettingState> emit) {
    final int selectedColor = event.index;
    event.context.read<AppBloc>().add(ColorBackgroudChanged(event.index));
    emit(state.copyWith(selectedColor: selectedColor)) ;
  }

}
