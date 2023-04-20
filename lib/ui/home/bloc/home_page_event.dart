part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

}
class DataStated extends HomePageEvent {
  DataStated();


  @override
  List<Object?> get props => [];

}

class IncreaseColumnPressed extends HomePageEvent {
  IncreaseColumnPressed(this.context);
  final BuildContext context;

  @override
  List<Object?> get props => [this.context];
}
class DicreaseColumnPressed extends HomePageEvent {
  DicreaseColumnPressed(this.context);
  final BuildContext context;

  @override
  List<Object?> get props => [this.context];
}
