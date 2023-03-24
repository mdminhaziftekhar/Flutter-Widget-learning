import 'package:flutter/material.dart';

class SliverGridScreen extends StatefulWidget {
  const SliverGridScreen({super.key});

  @override
  State<SliverGridScreen> createState() => _SliverGridScreenState();
}

class _SliverGridScreenState extends State<SliverGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver Grid Screen'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
               crossAxisSpacing: 5,
               mainAxisSpacing: 5,
               
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                // return Card(
                // margin: const EdgeInsets.all(5.0),
                // elevation: 3,
                return Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9 + 1)],
                  child: Text('Item ${index + 1}'),
                );
                // );
              },
              childCount: 200,
            ),
          ),
        ],
      ),
    );
  }
}
