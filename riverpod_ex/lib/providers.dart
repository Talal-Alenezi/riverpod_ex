import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/controller.dart';
import 'package:riverpod_ex/state.dart';

final counterController =
    StateNotifierProvider<CounterController, CounterState>(
        (ref) => CounterController(CounterState()));
