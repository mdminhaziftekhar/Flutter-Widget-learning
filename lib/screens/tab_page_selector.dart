import 'package:flutter/material.dart';

List<Widget> widgets = const [
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class TabPageSelectorScreen extends StatefulWidget {
  const TabPageSelectorScreen({super.key});

  @override
  State<TabPageSelectorScreen> createState() => _TabPageSelectorScreenState();
}

class _TabPageSelectorScreenState extends State<TabPageSelectorScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  int _index = 0;

  @override
  void initState() {
    controller = TabController(
      length: widgets.length,
      initialIndex: _index,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabPageSelectorScreen'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            child: const Icon(Icons.navigate_next),
            hoverElevation: 0,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
