import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';

import 'package:share_plus/share_plus.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.navAndheader,
      ),
      backgroundColor: ColorManager.body,
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBarWidget(title: 'مشاركة التطبيق'),
                SizedBox(
                  height: 45,
                ),
                Lottie.asset(
                  "assets/json/share.json",
                  height: 400,
                  width: deviceInfo.localWidth * 0.95,
                ),
                Text(
                  "مشاركة التطبيق",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                // const SizedBox(height: 33),
                SizedBox(
                  height: 50,
                  width: Get.width * 0.4,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorManager.button),
                    ),
                    onPressed: () async {
                      try {
                        final box = context.findRenderObject() as RenderBox?;

                        await Share.share(
                          'Nts.com',
                          sharePositionOrigin:
                              box!.localToGlobal(Offset.zero) & box.size,
                        );
                        //  Share.share('check out my website https://example.com');
                      } catch (e) {
                        print('erorrrr  :  $e');
                      }
                    },
                    icon: const Icon(Icons.share),
                    label: Text('مشاركة التطبيق'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
