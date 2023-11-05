import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:travel_app_flutter/application_layer/ShardFunction/valid.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/components/customListtile.dart';
import 'package:travel_app_flutter/presentation_layer/components/custombutten.dart';
import 'package:travel_app_flutter/presentation_layer/components/customtextfild.dart';
import 'package:travel_app_flutter/presentation_layer/components/handelAttch.dart';
import 'package:travel_app_flutter/presentation_layer/handlingView/handlingview.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/values_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/contact_book_screen/contact_book_controller.dart';

import '../../resources/font_manager.dart';

class ContactBookScreen extends StatelessWidget {
  const ContactBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactBookController controller = Get.put(ContactBookController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.navAndheader,
      ),
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return GetBuilder<ContactBookController>(builder: (contr) {
            return Container(
              height: deviceInfo.localHeight,
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
                    const AppBarWidget(title: 'الحجز'),
                    const SizedBox(
                      height: 7,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'استعلم الآن',
                        style: TextStyle(
                            color: ColorManager.kTexttow, fontSize: 20),
                      ),
                    ),
                    const Text(
                      'اسمك',
                      style:
                          TextStyle(color: ColorManager.kTextone, fontSize: 20),
                    ),
                    CustomTextfeild(
                      valid: (p0) {
                        return validInput(p0.toString(), 2, 50, 'type');
                      },
                      onsaved: (p0) {
                        return controller.nameag = p0.toString();
                      },
                      titel: 'ادخل اسمك',
                      width: deviceInfo.localWidth * AppDeviceSize.m5,
                      height: 70,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'هاتفك',
                      style:
                          TextStyle(color: ColorManager.kTextone, fontSize: 20),
                    ),
                    CustomTextfeild(
                      valid: (p0) {
                        return validInput(p0.toString(), 2, 50, 'phone');
                      },
                      onsaved: (p0) {
                        return controller.phoneag = p0.toString();
                      },
                      titel: 'ادخل رقم هاتف ',
                      width: deviceInfo.localWidth * AppDeviceSize.m5,
                      height: 70,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'اميلك',
                      style:
                          TextStyle(color: ColorManager.kTextone, fontSize: 20),
                    ),
                    CustomTextfeild(
                      valid: (p0) {
                        return validInput(p0.toString(), 2, 50, 'email');
                      },
                      onsaved: (p0) {
                        return controller.emailag = p0.toString();
                      },
                      titel: 'ادخل الاميل الخاص بك',
                      width: deviceInfo.localWidth * AppDeviceSize.m5,
                      height: 70,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'موعد البدايه',
                      style:
                          TextStyle(color: ColorManager.kTextone, fontSize: 20),
                    ),
                    // SizedBox(
                    //   width: 300,
                    //   height: 65,
                    //   child: DateTimePicker(
                    //     type: DateTimePickerType.date,
                    //     dateMask: 'd MMMM, yyyy',
                    //     // controller: controller.controller2,
                    //     //initialValue: _initialValue,
                    //     firstDate: DateTime(2023),
                    //     lastDate: DateTime(2025),
                    //     //icon: Icon(Icons.event),
                    //     dateLabelText: 'Date Time',
                    //     use24HourFormat: false,
                    //     locale: const Locale('en', 'US'),
                    //     onChanged: (value) {
                    //       controller.controller2.text = value.toString();
                    //     },
                    //     validator: (val) {
                    //       return null;
                    //     },
                    //     onSaved: (newValue) {},
                    //   ),
                    // ),

                    CustomTextfeild(
                      readOnly: true,
                      controller: controller.controller2,
                      valid: (p0) {},
                      onsaved: (p0) {},
                      onTap: () => contr.selectDate(context),
                      titel: 'Date',
                      width: deviceInfo.localWidth * 0.05,
                      icon: Icons.calendar_month,
                      height: 60,
                    ),

                    const SizedBox(height: 15),
                    const Text(
                      'موعد النهايه',
                      style:
                          TextStyle(color: ColorManager.kTextone, fontSize: 20),
                    ),

                    CustomTextfeild(
                      readOnly: true,
                      controller: controller.controller3,
                      valid: (p0) {},
                      onsaved: (p0) {},
                      onTap: () => contr.selectDate2(context),
                      titel: 'Date',
                      width: deviceInfo.localWidth * 0.05,
                      icon: Icons.calendar_month,
                      height: 60,
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: deviceInfo.localWidth * AppDeviceSize.m5,
                    //   ),
                    //   child: DateTimePicker(
                    //     type: DateTimePickerType.date,
                    //     dateMask: 'd MMMM, yyyy', // - hh:mm a
                    //     controller: controller.controller3,
                    //     //initialValue: _initialValue,
                    //     firstDate: DateTime(2023),
                    //     lastDate: DateTime(2025),
                    //     //icon: Icon(Icons.event),
                    //     dateLabelText: 'Date Time',
                    //     use24HourFormat: false,
                    //     locale: const Locale('en', 'US'),
                    //     onChanged: (value) {},
                    //     validator: (val) {
                    //       return null;
                    //     },
                    //     onSaved: (newValue) {},
                    //   ),
                    // ),
                    // const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
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
                    EditpayTrip(size: deviceInfo.localWidth * 0.06),
                    const SizedBox(height: 15),
                    const Text(
                      'هل تريد اضافة اي وصف',
                      style:
                          TextStyle(color: ColorManager.kTextone, fontSize: 20),
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
                      width: deviceInfo.localWidth * AppDeviceSize.m5,
                      height: 200,
                    ),
                    const SizedBox(height: 15),
                    GetBuilder<ContactBookController>(
                      builder: (controller) {
                        return HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: CustomButton(
                            width: double.infinity,
                            haigh: 60,
                            color: ColorManager.button,
                            text: 'الاستعلام الان',
                            press: () {
                              if (controller.formkeysigin.currentState!
                                  .validate()) {
                                controller.formkeysigin.currentState!.save();
                                controller.addBook(context);
                              }
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            );
          });
        },
      ),
    );
  }
}

class EditpayTrip extends StatelessWidget {
  const EditpayTrip({
    super.key,
    required this.size,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactBookController>(
      init: ContactBookController(),
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
