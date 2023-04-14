import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vbook/common/enum/common_status.dart';
import 'package:vbook/storage/storage.dart';
import 'package:vbook/utils/colors_using.dart';

part 'app_event.dart';
part 'app_state.dart';


class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.initial()) {
    on<AppStated>(_onAppStarted);
    on<AuthChanged>(_onAuthChange);
    on<ColorBackGroundChanged>(_onColorBackGroundChanged);
    add(AppStated());
  }

  _onAppStarted(AppStated event,Emitter<AppState> emit) {
    final isLogin = Storage.instance().getCurrentLoginStatus;
    print(state.color.value);

    emit(state.copyWith(isLogin: isLogin, status: CommonStatus.loaded));
  }

  _onAuthChange(AuthChanged event,Emitter<AppState> emit) async {
    emit(state.copyWith(status: CommonStatus.loading));
    await Storage.instance().setLoginStatus(event.isLogin);
    emit(state.copyWith(isLogin: event.isLogin, status: CommonStatus.loaded));
  }
  _onColorBackGroundChanged(ColorBackGroundChanged event, Emitter<AppState> emit)  {
    print(state.color.value);
    emit(state.copyWith(color: ColorsUsing.colorList[event.index]));
    print(state.color.value);
    print(event.index);
  }

}
