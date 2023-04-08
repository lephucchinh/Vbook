part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();
}

class AppStated extends AppEvent {
  @override
  List<Object?> get props => [];
}

class AuthChanged extends AppEvent {
  const AuthChanged(this.isLogin);

  final bool isLogin;

  @override
  List<Object?> get props => [isLogin];
}
