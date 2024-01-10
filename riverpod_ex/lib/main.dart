import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/providers.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countState = ref.watch(counterController);
    final countProvider = ref.read(counterController.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        children: [
          Text(countState.counter.toString()),
          ElevatedButton(
            onPressed: () {
              countProvider.incCounter();
            },
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
