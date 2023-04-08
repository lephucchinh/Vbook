
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/common/enum/common_status.dart';
import 'package:vbook/ui/account/widgets/login_dialog/login_dialog.dart';
import 'package:vbook/ui/account/widgets/register_dialog/register_dialog.dart';

part 'account_event.dart';

part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState.initial()) {
    on<AccountLoginButtonPressed>(_onAccountLoginButtonPressed);
    on<AccountRegisterButtonPressed>(_onAccountRegisterButtonPressed);
    on<AccountLogoutButtonPressed>(_onAccountLogoutButtonPressed);
  }
  _onAccountLoginButtonPressed(
      AccountLoginButtonPressed event, Emitter<AccountState> emit) {
    LoginDialog.show(event.context);
  }
  _onAccountRegisterButtonPressed(
      AccountRegisterButtonPressed event, Emitter<AccountState> emit) {
    RegisterDialog.show(event.context);
  }
  _onAccountLogoutButtonPressed(
      AccountLogoutButtonPressed event, Emitter<AccountState> emit) {
    event.context.read<AppBloc>().add(const AuthChanged(false));
  }


}


