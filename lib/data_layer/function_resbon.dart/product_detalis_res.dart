// // ignore_for_file: file_names

import 'package:travel_app_flutter/data_layer/database/connectdatabase.dart';
import 'package:travel_app_flutter/presentation_layer/resources/msnge_api.dart';

getTripDetalisRespon(int idproduct) async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    '${APiMange.detalis}/$idproduct',
  );

  return respons;
}

addBooktripRespon(
    {required String trip_id,
    required String name,
    required String phone,
    required String description,
    required String email,
    required String start_data,
    required String end_data,
    required String pay}) async {
  Curd curd = Curd();
  var respons = await curd.postrequest(
    APiMange.booktrip,
    {
      'trip_id': trip_id,
      'name': name,
      "phone": phone,
      "description": description,
      'email': email,
      'start_data': start_data,
      "end_data": end_data,
      "pay": pay,
    },
    encode: true,
    myheadersres: myheaders,
  );
  return respons;
}
