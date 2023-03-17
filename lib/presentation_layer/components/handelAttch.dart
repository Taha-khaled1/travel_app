import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/components/customListtile.dart';
import 'package:share_plus/share_plus.dart';

void handleAttachmentPressed(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) => SafeArea(
      child: SizedBox(
        height: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomListtile(
              widget: Icon(Icons.camera_alt_outlined),
              onTap: () {
                Navigator.pop(context);
                getImage(ImageSource.camera);
              },
              titel: 'التقاط صوره',
            ),
            CustomListtile(
              widget: Icon(Icons.browse_gallery_outlined),
              onTap: () {
                Navigator.pop(context);
                getImage(ImageSource.gallery);
              },
              titel: 'اختار صوره',
            ),
            CustomListtile(
              widget: Icon(
                Icons.arrow_back_ios_outlined,
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              titel: 'الرجوع للخلف',
            ),
          ],
        ),
      ),
    ),
  );
}

Future getImage(ImageSource source) async {
  ImagePicker imagePicker = ImagePicker();
  XFile? pickedFile;
  pickedFile = await imagePicker.pickImage(source: source);
  if (pickedFile != null) {
    File imageFile = File(pickedFile.path);
  }
}
