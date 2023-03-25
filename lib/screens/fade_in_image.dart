import 'package:flutter/material.dart';

class FadeInImageScreen extends StatefulWidget {
  const FadeInImageScreen({super.key});

  @override
  State<FadeInImageScreen> createState() => _FadeInImageScreenState();
}

class _FadeInImageScreenState extends State<FadeInImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade in image screen'),
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/images/minhaz.jpg'),
          image: NetworkImage(
              'https://i.pinimg.com/736x/43/01/2a/43012a69516821c97de2ad4a62e3d2b4.jpg'),
        ),
      ),
    );
  }
}
