import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploader extends StatefulWidget {
  @override
  _ImageUploaderState createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void uploadImage() {
    // Implement your image uploading logic here
    print('Image uploaded!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:
            const Text('Image Uploader', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? const Text(
                    'No image selected.',
                    style: TextStyle(color: Colors.black),
                  )
                : Image.file(_image!),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: uploadImage,
              child: const Text('Upload Image'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        backgroundColor: Colors.black,
        child: const Icon(Icons.add_a_photo, color: Colors.white),
      ),
    );
  }
}
