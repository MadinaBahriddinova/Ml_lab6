import 'package:flutter/material.dart';

void main() {
  runApp(const Section2Task5_ColorBoxApp());
}

class Section2Task5_ColorBoxApp extends StatelessWidget {
  const Section2Task5_ColorBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section2Task5_ColorBox Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section2Task5_ColorBoxScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section2Task5_ColorBoxScreen extends StatelessWidget {
  const Section2Task5_ColorBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section2Task5_ColorBox')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section2Task5_ColorBoxWidget(),
      ),
    );
  }
}


class Section2Task5Widget extends StatefulWidget {
  const Section2Task5Widget({super.key});

  @override
  State<Section2Task5Widget> createState() => _Section2Task5WidgetState();
}

class _Section2Task5WidgetState extends State<Section2Task5Widget> {
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 200, height: 200, color: _color),
        const SizedBox(height: 12),
        Wrap(spacing: 8, children: [
          ElevatedButton(onPressed: () => setState(() => _color = Colors.red), child: const Text('Red')),
          ElevatedButton(onPressed: () => setState(() => _color = Colors.green), child: const Text('Green')),
          ElevatedButton(onPressed: () => setState(() => _color = Colors.blue), child: const Text('Blue')),
        ]),
      ],
    );
  }
}

