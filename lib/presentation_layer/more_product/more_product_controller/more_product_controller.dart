import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/data_layer/database/connectdatabase.dart';
import 'package:travel_app_flutter/domin_layer/models/TriphomeMoreModel.dart';
import 'package:travel_app_flutter/presentation_layer/resources/msnge_api.dart';

class MoreProductController extends GetxController {
  int page = 1;
  TriphomeMoreModel? propertyCardModel;
  TriphomeMoreModel? propertyCardModellsload;
  // late StatusRequest statusRequest;
  bool isFirstLoadRunning = false;
  bool hasNextPage = true;
  bool isLoadMoreRunning = false;
  String search = Get.arguments['search'] ?? '';
  void _loadMore() async {
    if (hasNextPage == true &&
        isFirstLoadRunning == false &&
        isLoadMoreRunning == false &&
        scrollController.position.extentAfter < 300) {
      isLoadMoreRunning = true; // Display a progress indicator at the bottom
      update();
      page += 1; // Increase page by 1
      try {
        var response;

        response = await getSearchRespon(search, page);

        propertyCardModellsload = TriphomeMoreModel.fromJson(response);

        if (propertyCardModellsload!.trip!.isNotEmpty) {
          propertyCardModel!.trip!.addAll(propertyCardModellsload!.trip!);
          update();
        } else {
          hasNextPage = false;
          update();
        }
      } catch (err) {
        if (kDebugMode) {
          print('Something went wrong!');
        }
      }

      isLoadMoreRunning = false;
      update();
    }
    update();
  }

  void firstLoad() async {
    isFirstLoadRunning = true;
    update();
    var response = await getSearchRespon(search, page);
    print(response);
    try {
      propertyCardModel = await TriphomeMoreModel.fromJson(response);
      isFirstLoadRunning = false;
    } catch (e) {
      print(e);
    }
    update();
    return response;
  }

  late ScrollController scrollController;
  @override
  void onInit() {
    firstLoad();
    update();
    scrollController = ScrollController()..addListener(_loadMore);

    super.onInit();
  }
}

getSearchRespon(String inpout, int page) async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    '${APiMange.search}?name=$inpout&page=$page',
  );
  return respons;
}
