// ignore_for_file: public_member_api_docs, sort_constructors_first
class CounterState {
  final int counter;
  CounterState({
    this.counter = 0,
  });

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }
}
