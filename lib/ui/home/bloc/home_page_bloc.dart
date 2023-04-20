
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:vbook/storage/storage.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState.Initial()) {
    on<DataStated>(_onDataStated);
    on<IncreaseColumnPressed>(_onIncreaseColumnPressed);
    on<DicreaseColumnPressed>(_onDicreaseColumnPressed);
    add(DataStated());

  }

  _onDataStated (DataStated event, Emitter<HomePageState> emit) {
    final column = Storage.instance().getColumnData;


    emit(state.copyWith(column: column));
  }

  _onIncreaseColumnPressed(IncreaseColumnPressed event , Emitter<HomePageState> emit) async {
    if(state.column <= 3){
      final int column = state.column +1;
      await Storage.instance().setColumnData(column);
      emit(state.copyWith(column: column ));
    }

  }
  _onDicreaseColumnPressed(DicreaseColumnPressed event, Emitter<HomePageState> emit) async {
    if(state.column >=3) {
      final int column = state.column  - 1;
      await Storage.instance().setColumnData(column);
      emit(state.copyWith(column: column));
    }
  }
  }

