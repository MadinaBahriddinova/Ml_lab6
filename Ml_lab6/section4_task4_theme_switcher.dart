import 'package:flutter/material.dart';

void main() {
  runApp(const Section4Task4_ThemeSwitcherApp());
}

class Section4Task4_ThemeSwitcherApp extends StatelessWidget {
  const Section4Task4_ThemeSwitcherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section4Task4_ThemeSwitcher Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section4Task4_ThemeSwitcherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section4Task4_ThemeSwitcherScreen extends StatelessWidget {
  const Section4Task4_ThemeSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section4Task4_ThemeSwitcher')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section4Task4_ThemeSwitcherWidget(),
      ),
    );
  }
}


import 'package:provider/provider.dart';

class Section4Task4Widget extends StatelessWidget {
  const Section4Task4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => ThemeModel(), child: const ThemeSwitcherApp());
  }
}

class ThemeModel extends ChangeNotifier {
  bool isDark = false;
  void toggle() { isDark = !isDark; notifyListeners(); }
}

class ThemeSwitcherApp extends StatelessWidget {
  const ThemeSwitcherApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeModel>();
    return MaterialApp(
      title: 'Theme Switcher',
      theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Switcher')),
        body: Center(child: SwitchListTile(
          title: const Text('Dark Mode'),
          value: theme.isDark,
          onChanged: (_) => context.read<ThemeModel>().toggle(),
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

