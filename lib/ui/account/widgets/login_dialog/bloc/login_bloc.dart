import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/common/enum/common_status.dart';

import '../login_form_modal.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }
  _onLoginButtonPressed(LoginButtonPressed event, Emitter<LoginState> emit) {
    if(event.formKey.currentState?.validate() ?? false) {
      event.context.read<AppBloc>().add(const AuthChanged(true));
      Navigator.of(event.context).pop();
    }
  }
}
