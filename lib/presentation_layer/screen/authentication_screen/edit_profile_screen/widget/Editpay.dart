import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/authentication_screen/edit_profile_screen/controller/edite_profile_controller.dart';

import 'handel.dart';

class Editpay extends StatelessWidget {
  const Editpay({
    super.key,
    required this.size,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
      init: EditProfileController(),
      builder: (controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/credit-card.png',
                width: 55,
                height: 45,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                controller.pay,
                style: MangeStyles().getBoldStyle(
                  color: ColorManager.kTextblack,
                  fontSize: FontSize.s22,
                ),
              ),
              const Expanded(child: SizedBox()),
              TextButton(
                onPressed: () {
                  handleAttachmentPressed(context, controller);
                },
                child: Text(
                  'تعديل',
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.kTextone,
                    fontSize: FontSize.s18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
