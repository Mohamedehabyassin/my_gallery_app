class GalleryModel {
  String? status;
  Data? data;
  String? message;

  GalleryModel({this.status, this.data, this.message});

  GalleryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
    message = json['message'];
  }
}

class Data {
  List? images;

  Data({this.images});

  Data.fromJson(Map<String, dynamic> json) {
    images = json['images'];
  }

  Map<String, String> toJson() {
    final Map<String, String> data = <String, String>{};
    data['images'] = images as String;
    return data;
  }
}
