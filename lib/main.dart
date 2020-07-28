import 'package:camera_ejemplo/camera_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Camara Ejemplo',
      initialRoute: 'CameraPage',
      routes: {
        'CameraPage': (context) => CameraPage(),
      },
    );
  }
}
