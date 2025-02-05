import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class PanoramaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foto 360 Derajat'),
      ),
      body: Panorama(
        child: Image.asset('assets/PANO_20250131_081854~2.jpg'),
      ),
    );
  }
}
