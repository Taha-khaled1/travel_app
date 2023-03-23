class TriphomeModel {
  int? statusCode;
  String? message;
  List<TripsModel>? trip;

  TriphomeModel({this.statusCode, this.message, this.trip});

  TriphomeModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    message = json['message'];
    if (json['trip'] != null) {
      trip = <TripsModel>[];
      json['trip'].forEach((v) {
        trip!.add(TripsModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status_code'] = statusCode;
    data['message'] = message;
    if (trip != null) {
      data['trip'] = trip!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TripsModel {
  int? id;
  String? status;
  String? name;
  String? price;
  String? review;
  String? image;
  String? country;
  int? eventId;
  int? userId;
  String? createdAt;
  String? updatedAt;

  TripsModel(
      {this.id,
      this.status,
      this.name,
      this.price,
      this.review,
      this.image,
      this.country,
      this.eventId,
      this.userId,
      this.createdAt,
      this.updatedAt});

  TripsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    name = json['name'];
    price = json['price'];
    review = json['review'];
    image = json['image'];
    country = json['country'];
    eventId = json['event_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['status'] = status;
    data['name'] = name;
    data['price'] = price;
    data['review'] = review;
    data['image'] = image;
    data['country'] = country;
    data['event_id'] = eventId;
    data['user_id'] = userId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
