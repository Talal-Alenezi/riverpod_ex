import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/state.dart';

class CounterController extends StateNotifier<CounterState> {
  CounterController(super.state);

  void incCounter() {
    int localCounter = state.counter;
    state = state.copyWith(counter: localCounter++);
  }
}
