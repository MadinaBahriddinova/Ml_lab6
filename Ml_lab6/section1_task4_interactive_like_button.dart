//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section1Task4_InteractiveLikeButtonApp());
}

class Section1Task4_InteractiveLikeButtonApp extends StatelessWidget {
  const Section1Task4_InteractiveLikeButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section1Task4_InteractiveLikeButton Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section1Task4_InteractiveLikeButtonScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section1Task4_InteractiveLikeButtonScreen extends StatelessWidget {
  const Section1Task4_InteractiveLikeButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section1Task4_InteractiveLikeButton')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section1Task4_InteractiveLikeButtonWidget(),
      ),
    );
  }
}


class Section1Task4Widget extends StatelessWidget {
  const Section1Task4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: InteractiveLikeButton());
  }
}

/// InteractiveLikeButton: toggles _isLiked on tap using setState
class InteractiveLikeButton extends StatefulWidget {
  const InteractiveLikeButton({super.key});

  @override
  State<InteractiveLikeButton> createState() => _InteractiveLikeButtonState();
}

class _InteractiveLikeButtonState extends State<InteractiveLikeButton> {
  bool _isLiked = false;

  void _toggle() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 48,
      onPressed: _toggle,
      icon: Icon(_isLiked ? Icons.favorite : Icons.favorite_border),
      color: _isLiked ? Colors.red : null,
      tooltip: _isLiked ? 'Unlike' : 'Like',
    );
  }
}

