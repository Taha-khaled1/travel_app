import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/custombutten.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/contact_book_screen/contact_book_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/controller/PropertDetalisController.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/widget/Colection_Text.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/widget/LocationHomeWidget.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/widget/booking_info.dart';

class PropertyDetalisScreen extends StatelessWidget {
  const PropertyDetalisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PropertDetalisController controller = Get.put(PropertDetalisController());
    return Scaffold(
      backgroundColor: ColorManager.body,
      body: Container(
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const ImageDatalis(path: 'assets/images/brashot.png'),
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'البارشوت المائي',
                                  style: MangeStyles().getRegularStyle(
                                    color: ColorManager.kTexttow,
                                    fontSize: FontSize.s18,
                                  ),
                                ),
                                Text(
                                  'دبي',
                                  style: MangeStyles().getRegularStyle(
                                    color: ColorManager.kTextblack,
                                    fontSize: FontSize.s18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ColectionText(
                            text1: '8:00 ص',
                            titl: 'وقت العمل :   ',
                            text2: '5:00 م',
                          ),
                          const ColectionText(
                            text1: 'السبت',
                            titl: ' أيام العمل :   ',
                            text2: 'الخميس',
                          ),
                          const ColectionText(
                            text1: 'الصيف',
                            titl: ' ملائم بفصول : ',
                            text2: 'الربيع',
                          ),
                          const SizedBox(
                            height: 10,
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
                            height: 150,
                            child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  width: 250,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: ColorManager.grey2,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    'انترنت مجاني',
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
                                arguments: {'tripId': '1'},
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
          },
        ),
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
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
      child: BackButton(
        color: Colors.white,
      ),
    );
  }
}
