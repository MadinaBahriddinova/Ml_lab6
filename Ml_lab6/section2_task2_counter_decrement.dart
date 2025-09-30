import 'package:flutter/material.dart';

void main() {
  runApp(const Section2Task2_CounterApp());
}

class Section2Task2_CounterApp extends StatelessWidget {
  const Section2Task2_CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section2Task2_Counter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section2Task2_CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section2Task2_CounterScreen extends StatelessWidget {
  const Section2Task2_CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section2Task2_Counter')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section2Task2_CounterWidget(),
      ),
    );
  }
}


class Section2Task2Widget extends StatefulWidget {
  const Section2Task2Widget({super.key});

  @override
  State<Section2Task2Widget> createState() => _Section2Task2WidgetState();
}

class _Section2Task2WidgetState extends State<Section2Task2Widget> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);
  void _decrementCounter() => setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Count: $_counter', style: Theme.of(context).textTheme.headlineMedium)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'inc',
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            heroTag: 'dec',
            onPressed: _decrementCounter,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

