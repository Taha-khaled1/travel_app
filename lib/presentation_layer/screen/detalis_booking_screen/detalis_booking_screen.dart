import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_booking_screen/widget/StepperPage.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/detalis_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/widget/Colection_Text.dart';

class DetalisBookingScreen extends StatelessWidget {
  const DetalisBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.body,
      body: Container(
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return SingleChildScrollView(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const ImageDatalis(path: 'assets/images/brashot.png'),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('الباراشوت المائي',
                            style: MangeStyles().getBoldStyle(
                              color: ColorManager.kTextone,
                              fontSize: FontSize.s18,
                            )),
                        Text('دبي',
                            style: MangeStyles().getBoldStyle(
                              color: ColorManager.kTextone,
                              fontSize: FontSize.s18,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'تفاصيل الرحله',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kTexttow,
                          fontSize: FontSize.s18,
                        ),
                      ),
                    ),
                  ),
                  const ColectionText(
                    text1: 'محمد محمود',
                    titl: 'اسم المسجل :   ',
                    // text2: '5:00 م',
                  ),
                  const ColectionText(
                    text1: '971547222164',
                    titl: 'رقم هاتفك     :   ',
                    // text2: '5:00 م',
                  ),
                  const ColectionText(
                    text1: '2024/5/22',
                    titl: 'بداية الرحله    :   ',
                    // text2: '5:00 م',
                  ),
                  const ColectionText(
                    text1: '2024/6/22',
                    titl: 'نهاية الرحله  :   ',
                    //  text2: '5:00 م',
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'حالة الرحله',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kTexttow,
                          fontSize: FontSize.s18,
                        ),
                      ),
                    ),
                  ),
                  StepperPage(),
                  SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// Copyright 2020 J-P Nurmi <jpnurmi@gmail.com>
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
