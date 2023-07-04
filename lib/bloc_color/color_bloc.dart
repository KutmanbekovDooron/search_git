import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EventColor{
  red,
  yellow,
  green,
  black,
  white,
  pink,
  blue,
  orange,
  purple,
}

class ColorBloc extends Cubit<Color>{
  ColorBloc() : super(Colors.red);

  void selectedColor(EventColor eventColor){
    if(eventColor == EventColor.black){
      emit(Colors.black);
    }else if(eventColor == EventColor.blue){
      emit(Colors.blue);
    }else if(eventColor == EventColor.green){
      emit(Colors.green);
    }else if(eventColor == EventColor.purple){
      emit(Colors.purple);
    }else if(eventColor == EventColor.yellow){
      emit(Colors.yellow);
    }else if(eventColor == EventColor.white){
      emit(Colors.white);
    }else if(eventColor == EventColor.pink){
      emit(Colors.pink);
    }else if(eventColor == EventColor.orange){
      emit(Colors.orange);
    }else{
      emit(Colors.red);
    }
  }

}



