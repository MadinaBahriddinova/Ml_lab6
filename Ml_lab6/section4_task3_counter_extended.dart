//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section4Task3_CounterExtendedApp());
}

class Section4Task3_CounterExtendedApp extends StatelessWidget {
  const Section4Task3_CounterExtendedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section4Task3_CounterExtended Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section4Task3_CounterExtendedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section4Task3_CounterExtendedScreen extends StatelessWidget {
  const Section4Task3_CounterExtendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section4Task3_CounterExtended')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section4Task3_CounterExtendedWidget(),
      ),
    );
  }
}


import 'package:provider/provider.dart';

class Section4Task3Widget extends StatelessWidget {
  const Section4Task3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => CounterModel(), child: const CounterScreen());
  }
}

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void increment() { _count++; notifyListeners(); }
  void decrement() { _count--; notifyListeners(); }
  void reset() { _count = 0; notifyListeners(); }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>();
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Counter Extended')),
      body: Center(child: Text('Count: ${counter.count}', style: Theme.of(context).textTheme.headlineMedium)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(heroTag: 'inc', onPressed: () => context.read<CounterModel>().increment(), child: const Icon(Icons.add)),
          const SizedBox(width: 8),
          FloatingActionButton(heroTag: 'dec', onPressed: () => context.read<CounterModel>().decrement(), child: const Icon(Icons.remove)),
          const SizedBox(width: 8),
          FloatingActionButton(heroTag: 'reset', onPressed: () => context.read<CounterModel>().reset(), child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}

