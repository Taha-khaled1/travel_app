import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/presentation_layer/components/customListtile.dart';
import 'package:travel_app_flutter/presentation_layer/screen/authentication_screen/edit_profile_screen/controller/edite_profile_controller.dart';

String x = '';
void handleAttachmentPressed(
    BuildContext context, EditProfileController controller) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) => SafeArea(
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomListtile(
              // color: ColorManager.ktextblackk,
              widget: Image.asset('assets/icons/bank.png'),
              onTap: () async {
                controller.changepay('تحويل بنكي');
              },
              titel: 'تحويل بنكي',
            ),
            CustomListtile(
              widget: Image.asset('assets/icons/visa.png'),
              onTap: () {
                controller.changepay('فيزا كارد');
              },
              titel: 'فيزا كارد',
            ),
            CustomListtile(
              widget: const Icon(
                Icons.attach_money,
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                controller.changepay('تحويل رقمي');
              },
              titel: 'تحويل رقمي',
            ),
          ],
        ),
      ),
    ),
  );
}
