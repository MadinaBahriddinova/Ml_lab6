import 'package:flutter/material.dart';

void main() {
  runApp(const Section2Task3_VisibilityApp());
}

class Section2Task3_VisibilityApp extends StatelessWidget {
  const Section2Task3_VisibilityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section2Task3_Visibility Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section2Task3_VisibilityScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section2Task3_VisibilityScreen extends StatelessWidget {
  const Section2Task3_VisibilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section2Task3_Visibility')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section2Task3_VisibilityWidget(),
      ),
    );
  }
}


class Section2Task3Widget extends StatefulWidget {
  const Section2Task3Widget({super.key});

  @override
  State<Section2Task3Widget> createState() => _Section2Task3WidgetState();
}

class _Section2Task3WidgetState extends State<Section2Task3Widget> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => setState(() => _isVisible = !_isVisible),
          child: Text(_isVisible ? 'Hide Text' : 'Show Text'),
        ),
        const SizedBox(height: 12),
        if (_isVisible)
          const Text('Now you see me!', style: TextStyle(fontSize: 18)),
      ],
    );
  }
}

