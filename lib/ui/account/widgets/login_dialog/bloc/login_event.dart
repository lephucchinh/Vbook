part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent(this.context);
  final BuildContext context;
}

class LoginButtonPressed extends LoginEvent {
  const LoginButtonPressed(super.context, {required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  List<Object?> get props =>[super.context, formKey];
}
