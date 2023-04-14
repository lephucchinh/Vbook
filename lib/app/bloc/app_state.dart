part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState._(  {
    required this.isLogin,
    required this.status,
    required this.color,
  });

  const AppState.initial(  {
    this.isLogin = false,
    this.status = CommonStatus.initial,
    this.color = Colors.white,
  });

  final bool isLogin;
  final CommonStatus status;
  final Color color;

  AppState copyWith({bool? isLogin, CommonStatus? status,  Color ? color}) {
    return AppState._(
      color: color ?? this.color,
      isLogin: isLogin ?? this.isLogin,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [isLogin, color, status];
}
