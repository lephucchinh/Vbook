part of 'register_bloc.dart';

class RegisterState extends Equatable {
  const RegisterState._({
    required this.status,
    this.error,
    required this.registerFormModal,
  });

  RegisterState.initial()
      : status = CommonStatus.initial,
        registerFormModal = RegisterFormModal(),
        error = "";

  final CommonStatus status;
  final String? error;
  final RegisterFormModal registerFormModal;

  RegisterState copyWith
      ({
    CommonStatus? status,
    String? error,
  }) {
    return RegisterState._(
      status: status ?? this.status,
      error: error ?? this.error,
      registerFormModal: registerFormModal,
    );
  }

  @override
  List<Object?> get props => [];
}
