import 'dart:io';

import 'package:flutter/material.dart';

import 'camera_view.dart';

class ShowImage extends StatelessWidget {
  final File image;
  const ShowImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CameraView()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            )),
        title: const Text('Image'),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: Image.file(image),
          ),
        ),
      ),
    );
  }
}
