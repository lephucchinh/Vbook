part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent(this.context);
  final BuildContext context;
}

class IncreaseColumnPressed extends HomePageEvent {
  IncreaseColumnPressed(super.context);


  @override
  List<Object?> get props => [super.context];
}
class DicreaseColumnPressed extends HomePageEvent {
  DicreaseColumnPressed(super.context);


  @override
  List<Object?> get props => [super.context];
}
