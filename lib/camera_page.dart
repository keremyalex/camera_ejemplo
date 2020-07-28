import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File _image;

  Future _getImagePicker() async {
    final image = await ImagePicker().getImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cámara'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _mostrarFoto(),
            SizedBox(
              height: 50.0,
            ),
            RaisedButton(
              onPressed: _getImagePicker,
              child: Text('Ver Cámara'),
            )
          ],
        ),
      ),
    );
  }

  Widget _mostrarFotoVacia() {
    return Image(
      image: AssetImage('assets/no-image.png'),
      //height: 300.0,
      fit: BoxFit.cover,
    );
  }

  Widget _mostrarFoto() {
    return Container(
      width: double.infinity,
      height: 400.0,
      child: _image == null
          ? _mostrarFotoVacia()
          : Image.file(
              _image,
            ),
    );
  }
}
