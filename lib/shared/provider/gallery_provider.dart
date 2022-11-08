import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_app/shared/network/request/gallery_request.dart';

class GalleryProvider extends ChangeNotifier {
  List galleryData = [];
  File? image;
  GalleryRequest galleryRequest = GalleryRequest();

  GalleryProvider() {
    galleryRequest.getGallery().then((value) {
      galleryData = value;
      notifyListeners();
    });
  }

  Future getImageFromCamera(String userToken) async {
    try {
      ImagePicker imagePicker = ImagePicker();
      XFile? myImage = await imagePicker.pickImage(source: ImageSource.camera);
      if (myImage == null) return;
      File image = File(myImage.path);
      await galleryRequest.postGallery(image,userToken);
      notifyListeners();
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
  }

  Future getImageFromGallery(String userToken) async {
    try {
      ImagePicker imagePicker = ImagePicker();
      XFile? myImage = await imagePicker.pickImage(source: ImageSource.gallery);
      if (myImage == null) return;
      File image = File(myImage.path);
      await galleryRequest.postGallery(image,userToken);
      notifyListeners();
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
  }
}
