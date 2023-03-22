// ignore_for_file: file_names

class CatogeryModel {
  int? statusCode;
  String? message;
  List<Catogery>? catogery;

  CatogeryModel({this.statusCode, this.message, this.catogery});

  CatogeryModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    message = json['message'];
    if (json['catogery'] != null) {
      catogery = <Catogery>[];
      json['catogery'].forEach((v) {
        catogery!.add(Catogery.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = statusCode;
    data['message'] = message;
    if (catogery != null) {
      data['catogery'] = catogery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Catogery {
  int? id;
  String? name;
  String? image;
  String? createdAt;
  String? updatedAt;

  Catogery({this.id, this.name, this.image, this.createdAt, this.updatedAt});

  Catogery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
