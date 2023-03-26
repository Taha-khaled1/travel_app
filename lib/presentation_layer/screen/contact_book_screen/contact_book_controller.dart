// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/handling.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/statusrequst.dart';
import 'package:travel_app_flutter/data_layer/function_resbon.dart/product_detalis_res.dart';
import 'package:travel_app_flutter/main.dart';

class ContactBookController extends GetxController {
  final GlobalKey<FormState> formkeysigin = GlobalKey();
  String? descag, phoneag, emailag, nameag;
  TextEditingController controller2 =
      TextEditingController(text: DateTime.now().toString());
  TextEditingController controller3 =
      TextEditingController(text: DateTime.now().toString());

  final tripId = sharedPreferences.getString('tripId');
  final tripimage = sharedPreferences.getString('image');
  final tripname = sharedPreferences.getString('name');
  final tripcountry = sharedPreferences.getString('country');
  String pay = 'حساب بنكي';
  changepay(String x) {
    pay = x;
    update();
    Get.back();
  }

  void addcop(BuildContext context) {
    sqlDb!.insertData(
      '''
       INSERT INTO hagez
       (id,image,country,name)
        VALUES
       ('$tripId','$tripimage','$tripcountry','$tripname') 
        
        ''',
    );
  }

  StatusRequest statusRequest = StatusRequest.none;
  addBook(BuildContext context) async {
    statusRequest = StatusRequest.loading;
    update();
    var respon = await addBooktripRespon(
      description: descag!,
      email: emailag!,
      end_data: controller3.text,
      start_data: controller2.text,
      name: nameag!,
      pay: pay,
      phone: phoneag!,
      trip_id: tripId!,
    );
    statusRequest = handlingData(respon);

    if (StatusRequest.success == statusRequest) {
      addcop(context);
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: 'تم إرسال الحجز بنجاح سيتم التواصل معك قريبا ',
        onConfirmBtnTap: () {
          Get.back();
          Future.delayed(const Duration(milliseconds: 100));
          Get.back();
        },
      );
    } else {
      statusRequest = StatusRequest.serverfailure;
    }

    update();
  }
}
