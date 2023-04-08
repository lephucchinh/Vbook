
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/common/enum/common_status.dart';
import 'package:vbook/ui/account/widgets/register_dialog/register_form_modal.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    on<RegisterButtonPressed>(_onRegisterButtonPressed);
  }

  _onRegisterButtonPressed(
      RegisterButtonPressed event, Emitter<RegisterState> emitter) {
    if(event.formKey.currentState?.validate() ?? false){
    event.context.read<AppBloc>().add(const AuthChanged(true));
    Navigator.of(event.context).pop();
  }
}
}
