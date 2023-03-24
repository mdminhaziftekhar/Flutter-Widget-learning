import 'package:flutter/material.dart';

class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({super.key});

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded widget'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 200,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orangeAccent,
              height: 500,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
