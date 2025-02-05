import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:risma_360/panorama.dart';

void main() {
  // Set the status bar color to transparent
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi 360 Museum Sumbawa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/splash_image.png', // Path to your image
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
            ),
            SizedBox(height: 20), // Space between image and text
            Text(
              'Aplikasi 360 Museum Sumbawa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Adjust the text color as needed
              ),
            ),
            SizedBox(height: 20), // Space before button
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman panorama
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PanoramaPage()),
                );
              },
              child: Text('Lihat Gambar 360'),
            ),
          ],
        ),
      ),
    );
  }
}
