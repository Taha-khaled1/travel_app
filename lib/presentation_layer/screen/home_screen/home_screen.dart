import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/application_layer/service/intitservices/services.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/components/searchWidget.dart';
import 'package:travel_app_flutter/presentation_layer/handlingView/handlingview.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/home_screen/controller/homeController.dart';
import 'package:travel_app_flutter/presentation_layer/screen/home_screen/widget/MostVisitedRealEstate.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/home_screen/widget/propertytype.dart';

class ClassName {
  final String name;
  final String image;

  ClassName({required this.name, required this.image});
}

List<ClassName> proptype = [
  ClassName(name: 'فعاليات جويه', image: 'assets/images/gowy.png'),
  ClassName(name: 'فعاليات بحريه', image: 'assets/images/b7ry.jpg'),
  ClassName(name: 'فعاليات صحراويه', image: 'assets/images/s7rawy.jpg'),
];

class Bestaear {
  final String name;
  final String image;

  Bestaear({required this.name, required this.image});
}

List<Bestaear> bestaear = [
  Bestaear(name: 'ابو ظبي', image: 'assets/images/abuzeby.jpg'),
  Bestaear(name: 'دبي', image: 'assets/images/dopy.jpg'),
  Bestaear(name: 'عجمان', image: 'assets/images/city.jpg'),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    List<String> x = [
      'assets/images/hotel2.jpg',
      'assets/images/city.jpg',
      'assets/images/tyartaimg2.jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.navAndheader,
      ),
      //   appBar: appbar('الصفحه الرئيسيه'),
      backgroundColor: ColorManager.white,
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return ListView(
            children: [
              const AppBarWidget(title: 'الصفحه الرئيسيه'),
              Transform.translate(
                offset: const Offset(0, -30),
                child: const Search(),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: bestaear.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 300,
                        height: 180,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                bestaear[index].image,
                                width: 300,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              child: Text(
                                bestaear[index].name,
                                style: MangeStyles().getBoldStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s27,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              // Container(
              //   alignment: Alignment.center,
              //   height: 200,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(right: 10),
              //         child: Text(
              //           'انواع الفاعليات',
              //           style: MangeStyles().getRegularStyle(
              //             color: ColorManager.kTexttow,
              //             fontSize: FontSize.s18,
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       Expanded(
              //         child: ListView.builder(
              //           scrollDirection: Axis.horizontal,

              //           itemCount: proptype
              //               .length, //controller.catogeryModels?.data?.length,

              //           itemBuilder: (BuildContext context, int index) {
              //             return PropertyType(
              //               image: proptype[index].image,
              //               haigh: 180,
              //               id: 1,
              //               title: proptype[index].name,
              //               width: 290,
              //             );
              //           },
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //     ],
              //   ),
              // ),

              GetBuilder<HomeController>(
                builder: (controller) {
                  return HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: MostVisitedRealEstate(
                      title: 'مغامرات',
                      data: controller.propertyCardModel,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GetBuilder<HomeController>(
                builder: (controller) {
                  return HandlingDataView(
                    statusRequest: controller.statusRequest2,
                    widget: MostVisitedRealEstate(
                      title: 'ايجار مركبات',
                      data: controller.propertyCardModel2,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GetBuilder<HomeController>(
                builder: (controller) {
                  return HandlingDataView(
                    statusRequest: controller.statusRequest3,
                    widget: MostVisitedRealEstate(
                      title: 'رحلات',
                      data: controller.propertyCardModel3,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}

Future FUN() async {
  await Future.delayed(
    const Duration(microseconds: 500),
  );
  return '';
}
