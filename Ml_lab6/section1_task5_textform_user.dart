//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section1Task5_TextFormUserApp());
}

class Section1Task5_TextFormUserApp extends StatelessWidget {
  const Section1Task5_TextFormUserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section1Task5_TextFormUser Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section1Task5_TextFormUserScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section1Task5_TextFormUserScreen extends StatelessWidget {
  const Section1Task5_TextFormUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section1Task5_TextFormUser')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section1Task5_TextFormUserWidget(),
      ),
    );
  }
}


class Section1Task5Widget extends StatefulWidget {
  const Section1Task5Widget({super.key});

  @override
  State<Section1Task5Widget> createState() => _Section1Task5WidgetState();
}

class _Section1Task5WidgetState extends State<Section1Task5Widget> {
  String _userName = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Enter your name'),
          onChanged: (val) => setState(() => _userName = val),
        ),
        const SizedBox(height: 16),
        Text('Current name: $_userName', style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}

