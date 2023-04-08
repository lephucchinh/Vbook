part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent(this.context);
  final BuildContext context;
}

class AccountLoginButtonPressed extends AccountEvent {
  const AccountLoginButtonPressed(super.context);

  @override
  List<Object?> get props => [super.context];
}

class AccountRegisterButtonPressed extends AccountEvent {
  const AccountRegisterButtonPressed(super.context);

  @override
  List<Object?> get props => [super.context];
}

class AccountLogoutButtonPressed extends AccountEvent {
  const AccountLogoutButtonPressed(super.context);

  @override
  List<Object?> get props => [super.context];

}
