import 'package:flutter/material.dart';

void main() {
  runApp(const Section3Task5_PropDrillApp());
}

class Section3Task5_PropDrillApp extends StatelessWidget {
  const Section3Task5_PropDrillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section3Task5_PropDrill Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section3Task5_PropDrillScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section3Task5_PropDrillScreen extends StatelessWidget {
  const Section3Task5_PropDrillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section3Task5_PropDrill')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section3Task5_PropDrillWidget(),
      ),
    );
  }
}


class Section3Task5Widget extends StatefulWidget {
  const Section3Task5Widget({super.key});

  @override
  State<Section3Task5Widget> createState() => _Section3Task5WidgetState();
}

class _Section3Task5WidgetState extends State<Section3Task5Widget> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Grandparent count: $_counter', style: Theme.of(context).textTheme.titleLarge),
        ParentWidget(counter: _counter, onIncrement: _increment),
      ],
    );
  }
}

class ParentWidget extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  const ParentWidget({super.key, required this.counter, required this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return ChildWidget(counter: counter, onIncrement: onIncrement);
  }
}

class ChildWidget extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  const ChildWidget({super.key, required this.counter, required this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Child sees: $counter'),
      ElevatedButton(onPressed: onIncrement, child: const Text('Increment')),
    ]);
  }
}

