import 'package:flutter/material.dart';

class SliverListScreen extends StatelessWidget {
  const SliverListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver List Screen'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
              margin: const EdgeInsets.all(5.0),
                child: ListTile(
              
                  title: Text('Item ${index + 1}'),
                  tileColor: Colors.orange[100 * (index % 9 + 1)],
                ),
              );
            },
              childCount: 200,
            ),
          ),
        ],
      ),
    );
  }
}
