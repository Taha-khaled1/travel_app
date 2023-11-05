import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/handling.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/statusrequst.dart';
import 'package:travel_app_flutter/data_layer/function_resbon.dart/product_detalis_res.dart';
import 'package:travel_app_flutter/domin_layer/models/propertyDetalisModel.dart';
import 'package:travel_app_flutter/presentation_layer/components/show_dialog.dart';

class PropertDetalisController extends GetxController {
  final GlobalKey<FormState> formkeysigin = GlobalKey();

  int idProperty = 1; // Get.arguments['id'];

  TripDatelisModel? propertyDetalisModel;
  late StatusRequest statusRequest;
  getPropertyDetalis(int id) async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getTripDetalisRespon(id);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        propertyDetalisModel = TripDatelisModel.fromJson(response);
      } else {
        statusRequest = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest = StatusRequest.erorr;
    }
    update();
  }

  @override
  void onInit() {
    getPropertyDetalis(idProperty);

    super.onInit();
  }
}
