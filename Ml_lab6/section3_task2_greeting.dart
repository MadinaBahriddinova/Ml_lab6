//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section3Task2_GreetingApp());
}

class Section3Task2_GreetingApp extends StatelessWidget {
  const Section3Task2_GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section3Task2_Greeting Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section3Task2_GreetingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section3Task2_GreetingScreen extends StatelessWidget {
  const Section3Task2_GreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section3Task2_Greeting')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section3Task2_GreetingWidget(),
      ),
    );
  }
}


class Section3Task2Widget extends StatelessWidget {
  const Section3Task2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: ParentGreeting());
  }
}

class ParentGreeting extends StatefulWidget {
  const ParentGreeting({super.key});

  @override
  State<ParentGreeting> createState() => _ParentGreetingState();
}

class _ParentGreetingState extends State<ParentGreeting> {
  String _name = 'Guest';

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Greeting(name: _name),
      const SizedBox(height: 8),
      ElevatedButton(onPressed: () => setState(() => _name = 'Alice'), child: const Text('Set to Alice')),
    ]);
  }
}

class Greeting extends StatelessWidget {
  final String name;
  const Greeting({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text('Hello, $name', style: Theme.of(context).textTheme.titleLarge);
  }
}

