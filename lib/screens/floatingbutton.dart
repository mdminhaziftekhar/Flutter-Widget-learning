import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  State<FloatingActionButtonScreen> createState() =>
      _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState
    extends State<FloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orangeAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
