import 'package:flutter/material.dart';

import 'fade_in_image.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Screen'),
      ),
      body: ListTile(
        trailing: Hero(
          tag: 'tag-1',
          child: const Icon(Icons.person),

        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const FadeInImageScreen())
        ),
        title: const Text('Click on me'),
      ),
    );
  }
}
