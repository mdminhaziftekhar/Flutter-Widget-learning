import 'package:flutter/material.dart';

class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({super.key});

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible widget'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Container(
                height: 200,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
