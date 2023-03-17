import 'package:flutter/material.dart';

import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  alignment: Alignment.topCenter,
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        color: ColorManager.navAndheader,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        //  crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: BackButton(
              color: ColorManager.white,
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: MangeStyles().getBoldStyle(
                  color: ColorManager.grey2,
                  fontSize: FontSize.s20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
