import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {

  bool selected = true;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: GestureDetector(
          onTap: () =>
             setState(() {
              selected = !selected;
            })
          ,
          child: Center(
            child: AnimatedContainer(
              width: selected ? 200.0 : 100.0,
              height: selected ? 100.0 : 200.0,
              color: selected ? Colors.blueGrey : Colors.white,
              alignment:
                  selected == true ? Alignment.center : Alignment.topCenter,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 75),
            ),
          ),
        ),
      ),
    );
  }
}
