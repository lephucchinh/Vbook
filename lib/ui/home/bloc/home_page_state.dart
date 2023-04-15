part of 'home_page_bloc.dart';

class HomePageState extends Equatable {
  const HomePageState._({required this.column});

  HomePageState.Initial({this.column = 3});

  final int column;

  HomePageState copyWith({int? column }) {
    return HomePageState._(
        column: column ?? this.column
    );
  }

  @override
  List<Object?> get props => [column];
}
