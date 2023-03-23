import 'package:flutter/material.dart';

class AlertDialogue extends StatefulWidget {
  const AlertDialogue({super.key});

  @override
  State<AlertDialogue> createState() => _AlertDialogueState();
}

class _AlertDialogueState extends State<AlertDialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("close"),
                  ),
                ],
              ),
            );
          },
          child: const Text("show alert dialogue"),
        ),
      ),
    );
  }
}
