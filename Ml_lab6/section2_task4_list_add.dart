import 'package:flutter/material.dart';

void main() {
  runApp(const Section2Task4_ListAddApp());
}

class Section2Task4_ListAddApp extends StatelessWidget {
  const Section2Task4_ListAddApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section2Task4_ListAdd Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section2Task4_ListAddScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section2Task4_ListAddScreen extends StatelessWidget {
  const Section2Task4_ListAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section2Task4_ListAdd')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section2Task4_ListAddWidget(),
      ),
    );
  }
}


class Section2Task4Widget extends StatefulWidget {
  const Section2Task4Widget({super.key});

  @override
  State<Section2Task4Widget> createState() => _Section2Task4WidgetState();
}

class _Section2Task4WidgetState extends State<Section2Task4Widget> {
  final List<String> _items = [];
  final TextEditingController _ctrl = TextEditingController();

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _addItem() {
    final text = _ctrl.text.trim();
    if (text.isEmpty) return;
    setState(() {
      _items.add(text);
      _ctrl.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
            child: TextField(controller: _ctrl, decoration: const InputDecoration(hintText: 'Enter item')),
          ),
          const SizedBox(width: 8),
          ElevatedButton(onPressed: _addItem, child: const Text('Add')),
        ]),
        const SizedBox(height: 12),
        Expanded(
          child: _items.isEmpty
              ? const Center(child: Text('No items yet'))
              : ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, idx) => ListTile(title: Text(_items[idx])),
                ),
        ),
      ],
    );
  }
}

