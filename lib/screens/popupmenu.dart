import 'package:flutter/material.dart';

class PopUpMenuScreen extends StatefulWidget {
  const PopUpMenuScreen({super.key});

  @override
  State<PopUpMenuScreen> createState() => _PopUpMenuScreenState();
}

class _PopUpMenuScreenState extends State<PopUpMenuScreen> {
  String title = 'First item';
  String item1 = 'First item';
  String item2 = 'Second item';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('practice'),
        ),
        body: ListTile(
          title: Text(title),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(item1),
                value: item1,
              ),
              PopupMenuItem(
                child: Text(item2),
                value: item2,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          ),
        ),
      ),
    );
  }
}
