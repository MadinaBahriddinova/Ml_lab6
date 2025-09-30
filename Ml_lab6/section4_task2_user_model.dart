//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section4Task2_UserModelApp());
}

class Section4Task2_UserModelApp extends StatelessWidget {
  const Section4Task2_UserModelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section4Task2_UserModel Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section4Task2_UserModelScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section4Task2_UserModelScreen extends StatelessWidget {
  const Section4Task2_UserModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section4Task2_UserModel')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section4Task2_UserModelWidget(),
      ),
    );
  }
}


import 'package:provider/provider.dart';

class Section4Task2Widget extends StatelessWidget {
  const Section4Task2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserModel(),
      child: const Center(child: UserWidget()),
    );
  }
}

class UserModel extends ChangeNotifier {
  String _username = 'Guest';
  String get username => _username;
  void setAdmin() {
    _username = 'Admin';
    notifyListeners();
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserModel>();
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Text('Username: ${user.username}', style: Theme.of(context).textTheme.titleLarge),
      const SizedBox(height: 8),
      ElevatedButton(onPressed: () => context.read<UserModel>().setAdmin(), child: const Text('Set Admin')),
    ]);
  }
}

