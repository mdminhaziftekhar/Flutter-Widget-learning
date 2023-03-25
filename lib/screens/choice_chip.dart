import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatefulWidget {
  const ChoiceChipScreen({super.key});

  @override
  State<ChoiceChipScreen> createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChoiceChipScreen'),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text('Choice Chip'),
          selected: _isSelected,
          selectedColor: Colors.orangeAccent,
          onSelected: (newState) {
            setState(() {
              _isSelected = newState;
            });
          },
        ),
      ),
    );
  }
}
