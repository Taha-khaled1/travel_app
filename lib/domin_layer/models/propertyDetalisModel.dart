class PropertyDetalisModel {
  int? statusCode;
  String? message;
  Property? property;

  PropertyDetalisModel({this.statusCode, this.message, this.property});

  PropertyDetalisModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    message = json['message'];
    property =
        json['property'] != null ? Property.fromJson(json['property']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status_code'] = statusCode;
    data['message'] = message;
    if (property != null) {
      data['property'] = property!.toJson();
    }
    return data;
  }
}

class Property {
  int? id;
  String? name;
  String? picture;
  String? country;
  int? status;
  int? views;
  int? recommended;
  int? catogerieId;
  int? userId;
  String? createdAt;
  String? updatedAt;
  PropertyDetails? propertyDetails;
  List<Images>? images;
  List<Facilities>? facilities;

  Property(
      {this.id,
      this.name,
      this.picture,
      this.country,
      this.status,
      this.views,
      this.recommended,
      this.catogerieId,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.propertyDetails,
      this.images,
      this.facilities});

  Property.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    country = json['country'];
    status = json['status'];
    views = json['views'];
    recommended = json['recommended'];
    catogerieId = json['catogerie_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    propertyDetails = json['property_details'] != null
        ? PropertyDetails.fromJson(json['property_details'])
        : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    if (json['facilities'] != null) {
      facilities = <Facilities>[];
      json['facilities'].forEach((v) {
        facilities!.add(Facilities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['picture'] = picture;
    data['country'] = country;
    data['status'] = status;
    data['views'] = views;
    data['recommended'] = recommended;
    data['catogerie_id'] = catogerieId;
    data['user_id'] = userId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (propertyDetails != null) {
      data['property_details'] = propertyDetails!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    if (facilities != null) {
      data['facilities'] = facilities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PropertyDetails {
  int? id;
  int? price;
  String? rentalTerm;
  String? description;
  int? space;
  String? buildingType;
  String? propertyDirection;
  int? numbeerRoom;
  int? numbeerToilet;
  double? longitude;
  double? latitude;
  String? address;
  String? sellerPhone;
  String? createdAt;
  String? updatedAt;
  int? propertyId;

  PropertyDetails(
      {this.id,
      this.price,
      this.rentalTerm,
      this.description,
      this.space,
      this.buildingType,
      this.propertyDirection,
      this.numbeerRoom,
      this.numbeerToilet,
      this.longitude,
      this.latitude,
      this.address,
      this.sellerPhone,
      this.createdAt,
      this.updatedAt,
      this.propertyId});

  PropertyDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    rentalTerm = json['Rental_term'];
    description = json['description'];
    space = json['space'];
    buildingType = json['building_type'];
    propertyDirection = json['property_direction'];
    numbeerRoom = json['numbeer_room'];
    numbeerToilet = json['numbeer_toilet'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    address = json['address'];
    sellerPhone = json['seller_phone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    propertyId = json['property_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['price'] = price;
    data['Rental_term'] = rentalTerm;
    data['description'] = description;
    data['space'] = space;
    data['building_type'] = buildingType;
    data['property_direction'] = propertyDirection;
    data['numbeer_room'] = numbeerRoom;
    data['numbeer_toilet'] = numbeerToilet;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['address'] = address;
    data['seller_phone'] = sellerPhone;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['property_id'] = propertyId;
    return data;
  }
}

class Images {
  int? id;
  int? propertyId;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  Images(
      {this.id,
      this.propertyId,
      this.imagePath,
      this.createdAt,
      this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propertyId = json['property_id'];
    imagePath = json['image_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['property_id'] = propertyId;
    data['image_path'] = imagePath;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Facilities {
  int? id;
  int? propertyId;
  String? facility;
  String? createdAt;
  String? updatedAt;

  Facilities(
      {this.id,
      this.propertyId,
      this.facility,
      this.createdAt,
      this.updatedAt});

  Facilities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propertyId = json['property_id'];
    facility = json['facility'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['property_id'] = propertyId;
    data['facility'] = facility;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
