import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/handling.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/statusrequst.dart';
import 'package:travel_app_flutter/application_layer/service/intitservices/services.dart';
import 'package:travel_app_flutter/data_layer/function_resbon.dart/get_home.dart';
import 'package:travel_app_flutter/domin_layer/models/TriphomeModel.dart';
import 'package:package_info_plus/package_info_plus.dart';

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

  TriphomeModel? propertyCardModel;
  late StatusRequest statusRequest;
  getAdventures() async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getAdventuresRespon();
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        propertyCardModel = TriphomeModel.fromJson(response);
      } else {
        statusRequest = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest = StatusRequest.erorr;
    }
    update();
  }

  TriphomeModel? propertyCardModel2;
  late StatusRequest statusRequest2;
  getBoats() async {
    try {
      statusRequest2 = StatusRequest.loading;
      var response = await getBoatsRespon();
      statusRequest2 = handlingData(response);
      if (statusRequest2 == StatusRequest.success) {
        print('----------------------------------');
        propertyCardModel2 = TriphomeModel.fromJson(response);
      } else {
        statusRequest2 = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest2 = StatusRequest.erorr;
    }
    update();
  }

  TriphomeModel? propertyCardModel3;
  late StatusRequest statusRequest3;
  getTrips() async {
    try {
      statusRequest3 = StatusRequest.loading;
      var response = await getTripsRespon();
      statusRequest3 = handlingData(response);
      if (statusRequest3 == StatusRequest.success) {
        print('----------------------------------');
        propertyCardModel3 = TriphomeModel.fromJson(response);
      } else {
        statusRequest3 = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest3 = StatusRequest.erorr;
    }
    update();
  }

  // CatogeryModel? catogeryModel;
  // late StatusRequest statusRequest4;
  // getPropertyCatogery() async {
  //   try {
  //     statusRequest4 = StatusRequest.loading;
  //     var response = await getCatogeryTypeRespon();
  //     statusRequest4 = handlingData(response);
  //     if (statusRequest4 == StatusRequest.success) {
  //       print('----------------------------------');
  //       catogeryModel = await CatogeryModel.fromJson(response);
  //       for (Catogerys element in catogeryModel!.catogerys!) {
  //         catogerNameslsit.add(
  //             catogeryList(name: element.name!, id: element.id!.toString()));
  //       }
  //     } else {
  //       statusRequest4 = StatusRequest.failure;
  //     }
  //   } catch (e) {
  //     statusRequest4 = StatusRequest.erorr;
  //   }
  //   update();
  // }

  // CountryModel? countryModel;
  // late StatusRequest statusRequest5;
  // getPropertyCountry() async {
  //   try {
  //     statusRequest5 = StatusRequest.loading;
  //     var response = await getForCounteryRespon();
  //     statusRequest5 = handlingData(response);
  //     if (statusRequest5 == StatusRequest.success) {
  //       print('----------------------------------');
  //       countryModel = await CountryModel.fromJson(response);
  //     } else {
  //       statusRequest5 = StatusRequest.failure;
  //     }
  //   } catch (e) {
  //     statusRequest5 = StatusRequest.erorr;
  //   }
  //   update();
  // }

  @override
  void onInit() async {
    getAdventures();
    getBoats();
    getTrips();
    // getPropertyCatogery();
    // getPropertyCountry();
    super.onInit();
  }
}
