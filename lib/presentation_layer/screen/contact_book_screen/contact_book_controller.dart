import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactBookController extends GetxController {
  final GlobalKey<FormState> formkeysigin = GlobalKey();
  late String phone, email, name;
  String? descag, phoneag, emailag, nameag;
  TextEditingController controller2 =
      TextEditingController(text: DateTime.now().toString());
  TextEditingController controller3 =
      TextEditingController(text: DateTime.now().toString());
  final tripId = Get.arguments['tripId'];
  String pay = 'حساب بنكي';
  changepay(String x) {
    pay = x;
    update();
    Get.back();
  }
}
