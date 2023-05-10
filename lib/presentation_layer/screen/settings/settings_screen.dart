import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/components/customListtile.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/authentication_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/home_screen/home_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/settings/screenseting/aboutpage.dart';
import 'package:travel_app_flutter/presentation_layer/screen/settings/screenseting/sharescreen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/settings/screenseting/terms.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/settings/widget/CustomContainerBoard.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.navAndheader,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarWidget(title: 'الاعدادت'),
            const SizedBox(
              height: 45,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              width: 500,
              height: 630,
              decoration: BoxDecoration(
                color: ColorManager.body,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    offset: Offset(3, 6),
                    color: Colors.black,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -30),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/77trips.png'),
                    ),
                  ),
                  Text(
                    'الشركه السياحيه',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kTexttow,
                      fontSize: FontSize.s20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // CustomListtile(
                  //   onTap: () {
                  //     Get.to(const EditProfileScreen());
                  //   },
                  //   titel: 'البيانات الشخصية',
                  //   widget: const Icon(
                  //     Icons.person,
                  //     size: 30,
                  //     color: ColorManager.kTextone,
                  //   ),
                  // ),
                  CustomListtile(
                    onTap: () {
                      Get.to(() => TermsAndConditionsPage());
                    },
                    titel: 'الشروط و الأحكام',
                    widget: const Icon(
                      Icons.terminal,
                      size: 30,
                      color: ColorManager.kTextone,
                    ),
                  ),
                  // CustomListtile(
                  //   onTap: () {
                  //     changepass(
                  //       context,
                  //     );
                  //   },
                  //   titel: 'تغيير كلمة السر',
                  //   widget: const Icon(
                  //     Icons.change_circle,
                  //     size: 30,
                  //     color: ColorManager.kTextone,
                  //   ),
                  // ),
                  CustomListtile(
                    onTap: () {
                      Get.to(() => const InviteFriend());
                    },
                    titel: 'مشاركة التطبيق',
                    widget: const Icon(
                      Icons.share,
                      size: 30,
                      color: ColorManager.kTextone,
                    ),
                  ),
                  CustomListtile(
                    onTap: () {
                      Get.to(() => const AboutPage());
                    },
                    titel: 'معلومات عنا',
                    widget: const Icon(
                      Icons.exit_to_app,
                      size: 30,
                      color: ColorManager.kTextone,
                    ),
                  ),
                  CustomListtile(
                    onTap: () {
                      exit(0);
                    },
                    titel: 'الخروج من التطبيق',
                    widget: const Icon(
                      Icons.exit_to_app,
                      size: 30,
                      color: ColorManager.kTextone,
                    ),
                  ),

                  // CustomListtile(
                  //   onTap: () {
                  //     QuickAlert.show(
                  //       showCancelBtn: true,
                  //       context: context,
                  //       type: QuickAlertType.warning,
                  //       text:
                  //           'سيتم حذف الحساب الخاص بك نهائيا من/n قاعدة البيانات الخاصه بنا ',
                  //       title: 'هل متاكد من حذف الحساب',
                  //       cancelBtnText: 'تراجع',
                  //       confirmBtnText: 'نعم متاكد',
                  //       confirmBtnColor: ColorManager.error,
                  //       onCancelBtnTap: () {
                  //         Get.back();
                  //       },
                  //       onConfirmBtnTap: () {
                  //         QuickAlert.show(
                  //           context: context,
                  //           type: QuickAlertType.warning,
                  //           text:
                  //               '  سيتم حذف الحساب الخاص بك نهائيا من قاعدة البيانات الخاصه بنا/n في خلال 30 يوم من الان ويمكنك الدخول اليه ف هذه الوقت',
                  //           title: 'الحاله',
                  //           onConfirmBtnTap: () {
                  //             Get.back();
                  //             Get.back();
                  //           },
                  //         );
                  //       },
                  //     );
                  //   },
                  //   titel: 'حذف الحساب',
                  //   widget: const Icon(
                  //     Icons.delete,
                  //     size: 30,
                  //     color: ColorManager.kTextone,
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ControllerBoardWidget extends StatelessWidget {
  const ControllerBoardWidget({
    Key? key,
    // required this.controller,
  }) : super(key: key);
  //final ControlBoardController controller;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (ctx, snapshot) {
        // Checking if future is resolved or not
        if (snapshot.connectionState == ConnectionState.done) {
          // If we got an error
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: const TextStyle(fontSize: 18),
              ),
            );

            // if we got our data
          } else if (snapshot.hasData) {
            // Extracting data from snapshot object

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CustomContainerBoard(
                      color: ColorManager.containacolor1,
                      number:
                          1, //, controller.countersModels?.cartItemCount! ?? 0,
                      subtitel: 'عدد الاعلانات التي /n تم نشرها بواستطك',
                      titel: 'اعلان',
                    ),
                    const CustomContainerBoard(
                      color: ColorManager.containacolor2,
                      number:
                          1, //controller.countersModels?.wishlistItemCount! ?? 0,
                      subtitel: 'مجموع مشاهدات /nالاعلانات الخاص بك',
                      titel: 'مشاهده',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomContainerBoard(
                  color: ColorManager.containacolor3,
                  number: 1, //controller.countersModels?.orderCount! ?? 0,
                  subtitel: 'مجموع الاستعلامات /nالعقارت الخاصه بك',
                  titel: 'استعلام',
                  opcty: 1,
                ),
              ],
            );
          }
        }

        // Displaying LoadingSpinner to indicate waiting state
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      // Future that needs to be resolved
      // inorder to display something on the Canvas
      future: FUN(),
    );
  }
}
