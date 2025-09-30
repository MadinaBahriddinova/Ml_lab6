import 'package:flutter/material.dart';

void main() {
  runApp(const Section5Task2_FavoriteProviderApp());
}

class Section5Task2_FavoriteProviderApp extends StatelessWidget {
  const Section5Task2_FavoriteProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section5Task2_FavoriteProvider Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section5Task2_FavoriteProviderScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section5Task2_FavoriteProviderScreen extends StatelessWidget {
  const Section5Task2_FavoriteProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section5Task2_FavoriteProvider')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section5Task2_FavoriteProviderWidget(),
      ),
    );
  }
}


import 'package:provider/provider.dart';

class Section5Task2Widget extends StatelessWidget {
  const Section5Task2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => FavoriteModel(), child: const FavoriteScreen());
  }
}

class FavoriteModel extends ChangeNotifier {
  bool _isFav = false;
  bool get isFav => _isFav;
  void toggle() { _isFav = !_isFav; notifyListeners(); }
}

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = context.watch<FavoriteModel>();
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Favorite')),
      body: Center(
        child: IconButton(
          iconSize: 48,
          icon: Icon(fav.isFav ? Icons.favorite : Icons.favorite_border),
          color: fav.isFav ? Colors.red : null,
          onPressed: () => context.read<FavoriteModel>().toggle(),
        ),
      ),
    );
  }
}

