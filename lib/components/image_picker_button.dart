import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/db_helper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerButton extends StatefulWidget {
  @override
  State<ImagePickerButton> createState() => _ImagePickerButtonState();
}

class _ImagePickerButtonState extends State<ImagePickerButton> {
  bool isSelected = false;
  File? _image;
  var imagePicker;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  Future<String> convertImage(File image) async {
    //if (image == null) return;
    Uint8List imageBites = await image.readAsBytesSync();
    String base64String = base64.encode(imageBites);
    //print(base64String);
    DbHelper.dbHelper.savePhoto(base64String);
    return base64String;
  }

  Future uploadToDataBase() async {
    if (_image == null) return;
    String base64 = base64Encode(_image!.readAsBytesSync());
    String imageName = _image!.path.split('/').last;
    print(imageName);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        XFile? image = await imagePicker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 50,
            preferredCameraDevice: CameraDevice.front);
        isSelected = !isSelected;
        setState(() {
          if (image == null) return;
          _image = File(image.path);
          convertImage(_image!);
        });
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.blueGrey[600],
            borderRadius: BorderRadius.circular(5)),
        child: isSelected
            ? Image.file(
                _image!,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              )
            : const Icon(
                Icons.add,
                size: 60,
                color: Colors.white,
              ),
      ),
    );
  }
}
