//Lab6
//Madina Bahriddinova
//Student id:220155
import 'package:flutter/material.dart';

void main() {
  runApp(const Section1Task2_ProductCardApp());
}

class Section1Task2_ProductCardApp extends StatelessWidget {
  const Section1Task2_ProductCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section1Task2_ProductCard Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Section1Task2_ProductCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Section1Task2_ProductCardScreen extends StatelessWidget {
  const Section1Task2_ProductCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Section1Task2_ProductCard')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Section1Task2_ProductCardWidget(),
      ),
    );
  }
}


class Section1Task2Widget extends StatelessWidget {
  const Section1Task2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ProductCard(productName: 'Wireless Headphones', price: 79.99),
    );
  }
}

/// ProductCard: Stateless widget that accepts productName and price
class ProductCard extends StatelessWidget {
  final String productName;
  final double price;

  const ProductCard({super.key, required this.productName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(productName, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('\$${price.toStringAsFixed(2)}', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}

