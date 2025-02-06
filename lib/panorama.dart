import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class PanoramaPage extends StatefulWidget {
  @override
  _PanoramaPageState createState() => _PanoramaPageState();
}

class _PanoramaPageState extends State<PanoramaPage> {
  final List<String> images = [
    'assets/scene_1.jpg',
    'assets/scene_2.jpg',
    'assets/scene_3.jpg',
    'assets/scene_4.jpg',
    'assets/scene_5.jpg',
  ];

  int currentIndex = 0;

  void _onTap() {
    setState(() {
      currentIndex = (currentIndex + 1) %
          images.length; // Gunakan modulo untuk mengulang indeks
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Panorama(
        child: Image.asset(images[currentIndex]),
      ),
    );
  }
}
