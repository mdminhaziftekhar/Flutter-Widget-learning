import 'package:flutter/material.dart';

class IndexedStackScreen extends StatefulWidget {
  const IndexedStackScreen({super.key});

  @override
  State<IndexedStackScreen> createState() => _IndexedStackScreenState();
}

class _IndexedStackScreenState extends State<IndexedStackScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indexed Stack Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: const Text('0'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: const Text('1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: const Text('2'),
                ),
              ],
            ),
            IndexedStack(
              index: index,
              children: [
                Center(
                  child: Image.network('https://tinyurl.com/yc4pctt5'),
                ),
                Center(
                  child: Image.network('https://tinyurl.com/22yj4f66'),
                ),
                Center(
                  child: Image.network('https://tinyurl.com/5n97bfvp'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
