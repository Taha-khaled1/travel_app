import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/main.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/custombutten.dart';
import 'package:travel_app_flutter/presentation_layer/handlingView/handlingview.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/msnge_api.dart';
import 'package:travel_app_flutter/presentation_layer/screen/contact_book_screen/contact_book_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/controller/PropertDetalisController.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/widget/Colection_Text.dart';

class PropertyDetalisScreen extends StatelessWidget {
  const PropertyDetalisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PropertDetalisController controller = Get.put(PropertDetalisController());

    return Scaffold(
      backgroundColor: ColorManager.body,
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return GetBuilder<PropertDetalisController>(
            builder: (controller) {
              return HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageDatalis(
                        path:
                            '${APiMange.baseurlImage}/${controller.propertyDetalisModel?.trip!.image}',
                      ),
                      Transform.translate(
                        offset: const Offset(0, -15),
                        child: Container(
                          height: 700,
                          width: deviceInfo.localWidth,
                          decoration: const BoxDecoration(
                            color: ColorManager.body,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 13,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.propertyDetalisModel?.trip!
                                              .name ??
                                          'name',
                                      style: MangeStyles().getRegularStyle(
                                        color: ColorManager.kTexttow,
                                        fontSize: FontSize.s18,
                                      ),
                                    ),
                                    Text(
                                      controller.propertyDetalisModel?.trip!
                                              .tripDetails!.city! ??
                                          'name',
                                      style: MangeStyles().getRegularStyle(
                                        color: ColorManager.kTextblack,
                                        fontSize: FontSize.s18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              ColectionText(
                                text1: controller.propertyDetalisModel?.trip
                                    ?.tripDetails?.startTime!,
                                titl: 'فترة الحجز  :   ',
                                text2: controller.propertyDetalisModel?.trip
                                    ?.tripDetails?.endTime!,
                              ),
                              ColectionText(
                                text1: controller.propertyDetalisModel?.trip
                                    ?.tripDetails?.workingDays!
                                    .split(',')
                                    .first,
                                x: true,
                                titl: ' أيام العمل :   ',
                                text2: controller.propertyDetalisModel?.trip
                                    ?.tripDetails?.workingDays!
                                    .split(',')
                                    .last,
                              ),
                              ColectionText(
                                text1: controller.propertyDetalisModel?.trip
                                    ?.tripDetails?.season!
                                    .split(',')
                                    .first,
                                titl: ' ملائم بفصول : ',
                                text2: controller.propertyDetalisModel?.trip
                                    ?.tripDetails?.season!
                                    .split(',')
                                    .last,
                              ),
                              ColectionText(
                                text1: controller.propertyDetalisModel?.trip
                                    ?.tripDetails!.age,
                                titl: ' يبداء العمر من:   ',
                              ),
                              ColectionText(
                                text1: controller
                                    .propertyDetalisModel?.trip?.price,
                                titl: ' اجمالي السعر للفتره باكملها:   ',
                              ),
                              ColectionText(
                                text1: controller.propertyDetalisModel?.trip
                                    ?.tripDetails!.addrees,
                                titl: ' العنوان:   ',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "مميزات المكان",
                                    style: MangeStyles().getRegularStyle(
                                      color: ColorManager.kTexttow,
                                      fontSize: FontSize.s18,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 130,
                                child: ListView.builder(
                                  itemCount: controller.propertyDetalisModel
                                      ?.trip?.features!.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      width: 200,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: ColorManager.grey2,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        controller.propertyDetalisModel?.trip
                                                ?.features![index] ??
                                            'name',
                                        style: MangeStyles().getRegularStyle(
                                          color: ColorManager.kTexttow,
                                          fontSize: FontSize.s18,
                                          isover: true,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomButton(
                                width: deviceInfo.localWidth * 0.9,
                                haigh: 60,
                                color: ColorManager.button,
                                text: 'اتصل الآن',
                                press: () {
                                  Get.to(
                                    () => const ContactBookScreen(),
                                  );
                                  sharedPreferences.setString(
                                    'tripId',
                                    controller.propertyDetalisModel?.trip!.id!
                                            .toString() ??
                                        '1',
                                  );
                                  sharedPreferences.setString(
                                    'image',
                                    controller.propertyDetalisModel?.trip!.image
                                            .toString() ??
                                        '1',
                                  );
                                  sharedPreferences.setString(
                                    'name',
                                    controller.propertyDetalisModel?.trip!.name
                                            .toString() ??
                                        '1',
                                  );
                                  sharedPreferences.setString(
                                    'country',
                                    controller
                                            .propertyDetalisModel?.trip!.country
                                            .toString() ??
                                        '1',
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ImageDatalis extends StatelessWidget {
  const ImageDatalis({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(top: 15, right: 15),
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(path),
          fit: BoxFit.cover,
        ),
      ),
      child: BackButton(
        color: Colors.white,
      ),
    );
  }
}
