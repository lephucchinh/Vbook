part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState._( {
    required this.isLogin,
    required this.status,
    required this.color,
  });

  const AppState.initial( {
    this.isLogin = false,
    this.status = CommonStatus.initial,
    this.color = ColorsUsing.colors,
  });

  final bool isLogin;
  final CommonStatus status;
  final List<Color> color;

  AppState copyWith({bool? isLogin, CommonStatus? status}) {
    return AppState._(
      color:  color,
      isLogin: isLogin ?? this.isLogin,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [isLogin];
}
