import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/valid.dart';
import 'package:travel_app_flutter/presentation_layer/components/custombutten.dart';
import 'package:travel_app_flutter/presentation_layer/components/customtextfild.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/controller/PropertDetalisController.dart';

void bookingInfo(BuildContext context, bool isreport,
    PropertDetalisController controller, double deviceInfo) {
  TextEditingController _controller2 =
      TextEditingController(text: DateTime.now().toString());
  Get.bottomSheet(
    isScrollControlled: true,
    Container(
      height: deviceInfo,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Form(
        key: controller.formkeysigin,
        child: ListView(
          children: [
            const SizedBox(
              height: 7,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'استعلم الآن عن هذا المكان',
                style: TextStyle(color: ColorManager.kTexttow, fontSize: 20),
              ),
            ),
            const Text(
              'اسمك',
              style: TextStyle(color: ColorManager.kTextone, fontSize: 20),
            ),
            CustomTextfeild(
              valid: (p0) {
                return validInput(p0.toString(), 2, 50, 'type');
              },
              onsaved: (p0) {
                return controller.nameag = p0.toString();
              },
              titel: 'ادخل اسمك',
              width: double.infinity * 0.85,
              height: 70,
            ),
            const SizedBox(height: 15),
            const Text(
              'هاتفك',
              style: TextStyle(color: ColorManager.kTextone, fontSize: 20),
            ),
            CustomTextfeild(
              valid: (p0) {
                return validInput(p0.toString(), 2, 50, 'phone');
              },
              onsaved: (p0) {
                return controller.phoneag = p0.toString();
              },
              titel: 'ادخل رقم هاتف ',
              width: 400,
              height: 70,
            ),
            const SizedBox(height: 15),
            const Text(
              'اميلك',
              style: TextStyle(color: ColorManager.kTextone, fontSize: 20),
            ),
            CustomTextfeild(
              valid: (p0) {
                return validInput(p0.toString(), 2, 50, 'email');
              },
              onsaved: (p0) {
                return controller.emailag = p0.toString();
              },
              titel: 'ادخل الاميل الخاص بك',
              width: double.infinity * 0.85,
              height: 70,
            ),
            const SizedBox(height: 15),
            const Text(
              'موعد البدايه',
              style: TextStyle(color: ColorManager.kTextone, fontSize: 20),
            ),
            DateTimePicker(
              type: DateTimePickerType.date,
              dateMask: 'd MMMM, yyyy',
              controller: _controller2,
              //initialValue: _initialValue,
              firstDate: DateTime(2023),
              lastDate: DateTime(2025),
              //icon: Icon(Icons.event),
              dateLabelText: 'Date Time',
              use24HourFormat: false,
              locale: Locale('en', 'US'),
              onChanged: (value) {},
              validator: (val) {
                return null;
              },
              onSaved: (newValue) {},
            ),
            const SizedBox(height: 15),
            const Text(
              'موعد النهايه',
              style: TextStyle(color: ColorManager.kTextone, fontSize: 20),
            ),
            DateTimePicker(
              type: DateTimePickerType.date,
              dateMask: 'd MMMM, yyyy', // - hh:mm a
              controller: _controller2,
              //initialValue: _initialValue,
              firstDate: DateTime(2023),
              lastDate: DateTime(2025),
              //icon: Icon(Icons.event),
              dateLabelText: 'Date Time',
              use24HourFormat: false,
              locale: Locale('en', 'US'),
              onChanged: (value) {},
              validator: (val) {
                return null;
              },
              onSaved: (newValue) {},
            ),
            const SizedBox(height: 15),
            const Text(
              'هل تريد اضافة اي وصف',
              style: TextStyle(color: ColorManager.kTextone, fontSize: 20),
            ),
            CustomTextfeild(
              maxLines: 5,
              valid: (p0) {
                return validInput(p0.toString(), 2, 250, 'nono');
              },
              onsaved: (p0) {
                return controller.descag = p0.toString();
              },
              titel: 'اكتب الوصف هنا',
              width: double.infinity * 0.85,
              height: 200,
            ),
            const SizedBox(height: 15),
            CustomButton(
              width: double.infinity,
              haigh: 60,
              color: ColorManager.button,
              text: 'الاستعلام الان',
              press: () {
                if (controller.formkeysigin.currentState!.validate()) {
                  controller.formkeysigin.currentState!.save();
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.success,
                    text: isreport
                        ? 'تم إرسال الابلاغ بنجاح'
                        : 'تم إرسال الاستعلام بنجاح ',
                    onConfirmBtnTap: () {
                      Get.back();
                      Future.delayed(const Duration(milliseconds: 100));
                      Get.back();
                    },
                  );
                }
              },
            )
          ],
        ),
      ),
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
  );
}
