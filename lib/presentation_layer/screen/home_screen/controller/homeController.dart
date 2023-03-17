import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/application_layer/service/intitservices/services.dart';

class HomeController extends GetxController {
  String? propertyType, propertyclassfication, propertydirection, propertyrentl;
  int? roomnumber, tolitnumber;
  // final ScrollController scrollController = ScrollController();

  changeroomnumbe(int roomnumbe) {
    roomnumber = roomnumbe;
    update();
  }

  changettolitnumbe(int tolitnumbe) {
    tolitnumber = tolitnumbe;
    update();
  }

  changetypepro(String propertyTypevalue) {
    propertyType = propertyTypevalue;
    update();
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    try {
      scrollController
          .animateTo(direction,
              duration: Duration(seconds: seconds), curve: Curves.linear)
          .then((value) {
        direction = direction == max ? min : max;
        animateToMaxMin(max, min, direction, seconds, scrollController);
      });
    } catch (e) {
      print('---------------------$e---------------');
    }
  }

  // @override
  // void onInit() {
  //   try {
  //     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //       double minScrollExtent1 = scrollController.position.minScrollExtent;
  //       double maxScrollExtent1 = scrollController.position.maxScrollExtent;
  //       animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1,
  //           15, scrollController);
  //     });
  //   } catch (e) {
  //     print('--111111111111111111-------------------$e---------------');
  //   }
  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   try {
  //     scrollController.dispose();
  //   } catch (e) {}
  //   super.dispose();
  // }
}
