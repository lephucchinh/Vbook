
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState.Initial()) {
    on<IncreaseColumnPressed>(_onIncreaseColumnPressed);
    on<DicreaseColumnPressed>(_onDicreaseColumnPressed);
  }
  _onIncreaseColumnPressed(IncreaseColumnPressed event , Emitter<HomePageState> emit) {
    if(state.column <= 3){
      final int column = state.column +1;
      emit(state.copyWith(column: column ));
    }
  }
  _onDicreaseColumnPressed(DicreaseColumnPressed event, Emitter<HomePageState> emit) {
    if(state.column >=3) {
      final int column = state.column  - 1;
      emit(state.copyWith(column: column));
    }
  }
  }

