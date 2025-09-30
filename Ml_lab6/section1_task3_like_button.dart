//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section1Task3_LikeButtonApp());
}

class Section1Task3_LikeButtonApp extends StatelessWidget {
  const Section1Task3_LikeButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section1Task3_LikeButton Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section1Task3_LikeButtonScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section1Task3_LikeButtonScreen extends StatelessWidget {
  const Section1Task3_LikeButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section1Task3_LikeButton')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section1Task3_LikeButtonWidget(),
      ),
    );
  }
}


class Section1Task3Widget extends StatelessWidget {
  const Section1Task3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: LikeButton());
  }
}

/// LikeButton: Stateful but non-interactive (for Task 3)
class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isLiked = false; // initial state but non-interactive for this task

  @override
  Widget build(BuildContext context) {
    return Icon(
      _isLiked ? Icons.favorite : Icons.favorite_border,
      size: 48,
      semanticLabel: _isLiked ? 'Liked' : 'Not liked',
      color: _isLiked ? Colors.red : null,
    );
  }
}

