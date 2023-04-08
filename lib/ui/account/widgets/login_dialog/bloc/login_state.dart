part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState._({
    required this.status,
    required this.loginFormModal,
    this.error,
  });

  LoginState.initial()
      : status = CommonStatus.initial,
        error = "",
        loginFormModal = LoginFormModal();

  final CommonStatus status;
  final String? error;
  final LoginFormModal loginFormModal;

  LoginState copyWith({
    CommonStatus? status,
    String? error,
  }) {
    return LoginState._(
      status: status ?? this.status,
      loginFormModal: loginFormModal,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [];
}
