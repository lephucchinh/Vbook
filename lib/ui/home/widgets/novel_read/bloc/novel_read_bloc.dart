import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'novel_read_event.dart';
part 'novel_read_state.dart';

class NovelReadBloc extends Bloc<NovelReadEvent, NovelReadState> {
  NovelReadBloc() : super(NovelReadInitial()) {
    on<NovelReadEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
