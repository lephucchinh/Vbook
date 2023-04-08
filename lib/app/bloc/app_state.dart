part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState._({
    required this.isLogin,
    required this.status,
  });

  const AppState.initial({
    this.isLogin = false,
    this.status = CommonStatus.initial,
  });

  final bool isLogin;
  final CommonStatus status;

  AppState copyWith({bool? isLogin, CommonStatus? status}) {
    return AppState._(
      isLogin: isLogin ?? this.isLogin,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [isLogin];
}
