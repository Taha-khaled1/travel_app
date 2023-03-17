import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/components/customListtile.dart';
import 'package:travel_app_flutter/presentation_layer/components/custombutten.dart';
import 'package:travel_app_flutter/presentation_layer/components/customtextfild.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:travel_app_flutter/presentation_layer/screen/authentication_screen/edit_profile_screen/widget/Editpay.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.navAndheader,
      ),
      backgroundColor: ColorManager.white,
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              //  shrinkWrap: false,
              children: [
                AppBarWidget(title: 'تعديل الحساب الخاص بك'),

                // Text(
                //   'الاسم واللقب',
                //   style: MangeStyles().getBoldStyle(
                //     color: ColorManager.kTextone,
                //     fontSize: FontSize.s20,
                //   ),
                // ),
                CustomTextfeild(
                  text: 'الاسم واللقب',
                  inialvalue: 'Hacen Boudebbane',
                  valid: (p0) {
                    return null;
                  },
                  onsaved: (p0) {
                    return null;
                  },
                  titel: 'ادخل هنا',
                  width: deviceInfo.localWidth * 0.85,
                  height: 108,
                ),
                const SizedBox(height: 10),

                CustomTextfeild(
                  text: 'رقم الهاتف',
                  inialvalue: '971547222163',
                  valid: (p0) {
                    return null;
                  },
                  onsaved: (p0) {
                    return null;
                  },
                  titel: 'ادخل هنا',
                  width: deviceInfo.localWidth * 0.85,
                  height: 108,
                ),
                const SizedBox(height: 10),

                CustomTextfeild(
                  text: 'اسم البلد',
                  inialvalue: 'NTS.design@gmail.com',
                  valid: (p0) {
                    return null;
                  },
                  onsaved: (p0) {
                    return null;
                  },
                  titel: 'ادخل هنا',
                  width: deviceInfo.localWidth * 0.85,
                  height: 108,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: deviceInfo.localWidth * 0.06,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'طريقة الدفع',
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.kTextone,
                        fontSize: FontSize.s20,
                      ),
                    ),
                  ),
                ),
                Editpay(size: deviceInfo.localWidth * 0.06),
                const SizedBox(height: 10),

                CustomTextfeild(
                  text: 'عنوان المنزل',
                  isBoarder: BorderStyle.none,
                  valid: (p0) {
                    return null;
                  },
                  onsaved: (p0) {
                    return null;
                  },
                  titel: 'Abudabhi 201,82299 ابوظبي',
                  width: deviceInfo.localWidth * 0.85,
                  height: 108,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  width: deviceInfo.localWidth * 0.85,
                  haigh: 55,
                  color: ColorManager.button,
                  text: 'حفظ',
                  press: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
