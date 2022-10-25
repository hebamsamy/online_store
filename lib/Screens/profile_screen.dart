import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? image;
  takephoto() async {
    var imagepicker = ImagePicker();
    var file = await imagepicker.pickImage(source: ImageSource.camera);
    setState(() {
      this.image = File(file!.path);
    });
  }

  choosefromgallary() async {
    var imagepicker = ImagePicker();
    var file = await imagepicker.pickImage(source: ImageSource.gallery);
    setState(() {
      this.image = File(file!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: (image == null) ? null : FileImage(image!),
            child: (image == null) ? Icon(Icons.add) : null,
          ),
          OutlinedButton.icon(
              onPressed: takephoto,
              icon: Icon(Icons.camera),
              label: Text("Take photo")),
          OutlinedButton.icon(
              onPressed: choosefromgallary,
              icon: Icon(Icons.photo_outlined),
              label: Text("Choose from gallary"))
        ]),
      ),
    );
  }
}
