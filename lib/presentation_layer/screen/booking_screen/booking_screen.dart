import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/application_layer/service/intitservices/services.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_booking_screen/detalis_booking_screen.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.body,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.navAndheader,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Column(
              children: [
                const AppBarWidget(title: 'الحجوزات الخاصه بك'),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.to(() => const DetalisBookingScreen());
                        },
                        child: Container(
                          width: 300,
                          height: 300,
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: deviceInfo.localWidth * 0.05,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 6),
                                color: Colors.grey,
                              ),
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, -6),
                                color: Colors.grey,
                              ),
                            ],
                            color: ColorManager.white,
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/brashot.png',
                                  height: 220,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'البارشوت المائي',
                                      style: MangeStyles().getBoldStyle(
                                        color: ColorManager.kTextone,
                                        fontSize: FontSize.s18,
                                      ),
                                    ),
                                    Text(
                                      'تفاصيل الرحله',
                                      style: MangeStyles().getBoldStyle(
                                        color: ColorManager.kTexttow,
                                        fontSize: FontSize.s18,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // SizedBox(
                //   height: 10,
                //   child: ListView(
                //     physics: const NeverScrollableScrollPhysics(),
                //     controller: scrollController1,
                //   ),
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
