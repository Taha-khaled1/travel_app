// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../main.dart';

// class MyServices extends GetxService {
//   late SharedPreferences sharedPreferences;

//   Future<MyServices> init() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     return this;
//   }
// }

// initialServices() async {
//   print('xxxxxxxxxxxxxxxxxxxxxxx');
//   await Get.put(() => MyServices().init());
// }
import 'package:flutter/material.dart';

//final ScrollController scrollController1 = ScrollController();

enum TypePlace { tourist, archaeological, otherwise }

enum PlaceRating { Nautical, Wild, aerial }
