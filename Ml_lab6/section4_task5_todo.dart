//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section4Task5_TodoApp());
}

class Section4Task5_TodoApp extends StatelessWidget {
  const Section4Task5_TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section4Task5_Todo Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section4Task5_TodoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section4Task5_TodoScreen extends StatelessWidget {
  const Section4Task5_TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section4Task5_Todo')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section4Task5_TodoWidget(),
      ),
    );
  }
}


import 'package:provider/provider.dart';

class Section4Task5Widget extends StatelessWidget {
  const Section4Task5Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => TodoListModel(), child: const TodoScreen());
  }
}

class TodoListModel extends ChangeNotifier {
  final List<String> _tasks = [];
  List<String> get tasks => List.unmodifiable(_tasks);

  void addTask(String task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(int index) {
    if (index < 0 || index >= _tasks.length) return;
    _tasks.removeAt(index);
    notifyListeners();
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController _ctrl = TextEditingController();

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<TodoListModel>();
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Column(
        children: [
          Row(children: [
            Expanded(child: TextField(controller: _ctrl, decoration: const InputDecoration(hintText: 'New task'))),
            ElevatedButton(onPressed: () {
              final text = _ctrl.text.trim();
              if (text.isEmpty) return;
              context.read<TodoListModel>().addTask(text);
              _ctrl.clear();
            }, child: const Text('Add')),
          ]),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: model.tasks.length,
              itemBuilder: (context, idx) => ListTile(
                title: Text(model.tasks[idx]),
                trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () => context.read<TodoListModel>().removeTask(idx)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

