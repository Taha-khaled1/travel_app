class TripDatelisModel {
  int? statusCode;
  String? message;
  Trip? trip;

  TripDatelisModel({this.statusCode, this.message, this.trip});

  TripDatelisModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    message = json['message'];
    trip = json['trip'] != null ? Trip.fromJson(json['trip']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status_code'] = statusCode;
    data['message'] = message;
    if (trip != null) {
      data['trip'] = trip!.toJson();
    }
    return data;
  }
}

class Trip {
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
  TripDetails? tripDetails;
  List<String>? features;

  Trip(
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
      this.updatedAt,
      this.tripDetails,
      this.features});

  Trip.fromJson(Map<String, dynamic> json) {
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
    tripDetails = json['trip_details'] != null
        ? TripDetails.fromJson(json['trip_details'])
        : null;
    features = json['features'].cast<String>();
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
    if (tripDetails != null) {
      data['trip_details'] = tripDetails!.toJson();
    }
    data['features'] = features;
    return data;
  }
}

class TripDetails {
  int? id;
  String? bank;
  String? description;
  String? workingDays;
  String? priceDay;
  String? priceHour;
  String? startTime;
  String? endTime;
  String? city;
  String? addrees;
  String? season;
  String? groupSize;
  String? age;
  String? longitude;
  String? latitude;
  int? tripId;

  TripDetails(
      {this.id,
      this.bank,
      this.description,
      this.workingDays,
      this.priceDay,
      this.priceHour,
      this.startTime,
      this.endTime,
      this.city,
      this.addrees,
      this.season,
      this.groupSize,
      this.age,
      this.longitude,
      this.latitude,
      this.tripId});

  TripDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bank = json['bank'];
    description = json['description'];
    workingDays = json['working_days'];
    priceDay = json['price_day'];
    priceHour = json['price_hour'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    city = json['city'];
    addrees = json['addrees'];
    season = json['season'];
    groupSize = json['group_size'];
    age = json['age'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    tripId = json['trip_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['bank'] = bank;
    data['description'] = description;
    data['working_days'] = workingDays;
    data['price_day'] = priceDay;
    data['price_hour'] = priceHour;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['city'] = city;
    data['addrees'] = addrees;
    data['season'] = season;
    data['group_size'] = groupSize;
    data['age'] = age;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['trip_id'] = tripId;
    return data;
  }
}
