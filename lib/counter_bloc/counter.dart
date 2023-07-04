import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<String>{
  CounterCubit() : super("");
  void increment() => emit(state + "a");
  void decrement() => emit(state + "b");

}