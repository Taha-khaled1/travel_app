import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/application_layer/service/intitservices/services.dart';
import 'package:travel_app_flutter/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:travel_app_flutter/presentation_layer/components/appbar1.dart';
import 'package:travel_app_flutter/presentation_layer/components/custombutten.dart';
import 'package:travel_app_flutter/presentation_layer/components/customtextfild.dart';
import 'package:travel_app_flutter/presentation_layer/components/searchWidget.dart';
import 'package:travel_app_flutter/presentation_layer/more_product/more_product.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/Filtter/Filtter_controller.dart';

class FiltterScreen extends StatefulWidget {
  const FiltterScreen({super.key});

  @override
  State<FiltterScreen> createState() => _FiltterScreenState();
}

class _FiltterScreenState extends State<FiltterScreen> {
  TypePlace? character = TypePlace.tourist;
  PlaceRating? charactertow = PlaceRating.Nautical;
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
          return ListView(
            shrinkWrap: true,
            children: [
              AppBarWidget(title: 'تصفية البيانات'),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: SizedBox(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'نوع المكان',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.kTexttow,
                            fontSize: FontSize.s18,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 113,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: TypePlace.tourist,
                              groupValue: character,
                              onChanged: (TypePlace? value) {
                                setState(() {
                                  character = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'سياحي',
                              style: MangeStyles().getSemiBoldStyle(
                                color: character == TypePlace.tourist
                                    ? ColorManager.kTextone
                                    : ColorManager.kTextblack.withOpacity(0.5),
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 113,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: TypePlace.archaeological,
                              groupValue: character,
                              onChanged: (TypePlace? value) {
                                setState(() {
                                  character = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'سياحي',
                              style: MangeStyles().getSemiBoldStyle(
                                color: character == TypePlace.archaeological
                                    ? ColorManager.kTextone
                                    : ColorManager.kTextblack.withOpacity(0.5),
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 113,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: TypePlace.otherwise,
                              groupValue: character,
                              onChanged: (TypePlace? value) {
                                setState(() {
                                  character = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'غير ذالك',
                              style: MangeStyles().getSemiBoldStyle(
                                color: character == TypePlace.otherwise
                                    ? ColorManager.kTextone
                                    : ColorManager.kTextblack.withOpacity(0.5),
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: SizedBox(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'تصنيف المكان',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.kTexttow,
                            fontSize: FontSize.s18,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 113,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: PlaceRating.Nautical,
                              groupValue: charactertow,
                              onChanged: (PlaceRating? value) {
                                setState(() {
                                  charactertow = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'بحري',
                              style: MangeStyles().getSemiBoldStyle(
                                color: character == PlaceRating.Nautical
                                    ? ColorManager.kTextone
                                    : ColorManager.kTextblack.withOpacity(0.5),
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 113,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: PlaceRating.Wild,
                              groupValue: charactertow,
                              onChanged: (PlaceRating? value) {
                                setState(() {
                                  charactertow = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'بري',
                              style: MangeStyles().getSemiBoldStyle(
                                color: charactertow == PlaceRating.Wild
                                    ? ColorManager.kTextone
                                    : ColorManager.kTextblack.withOpacity(0.5),
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 113,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: PlaceRating.aerial,
                              groupValue: charactertow,
                              onChanged: (PlaceRating? value) {
                                setState(() {
                                  charactertow = value;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'جوي',
                              style: MangeStyles().getSemiBoldStyle(
                                color: character == PlaceRating.aerial
                                    ? ColorManager.kTextone
                                    : ColorManager.kTextblack.withOpacity(0.5),
                                fontSize: FontSize.s16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CustomTextfeild(
                  valid: (p0) {},
                  onsaved: (p0) {},
                  titel: 'ابحث بواسطة اسم المكان',
                  width: 500,
                  height: 120,
                  text: 'اسم المكان',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'اختار مميزات المكان',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kTextone,
                      fontSize: FontSize.s20,
                    ),
                  ),
                ),
              ),
              GetBuilder<FiltterController>(
                init: FiltterController(),
                initState: (_) {},
                builder: (_) {
                  return Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: deviceInfo.localWidth * 0.88,
                    margin: EdgeInsets.only(top: 10, right: 8, left: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorManager.grey2.withOpacity(0.8),
                    ),
                    child: DropdownButton<String>(
                      dropdownColor: ColorManager.white,
                      hint: Text(
                        'يرجي اختيار مدة الايجار',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.grey2,
                          fontSize: FontSize.s14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      value: _.valuee,
                      items: _.xc.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value.toString(),
                            style: MangeStyles().getBoldStyle(
                              color: ColorManager.kTextblack,
                              fontSize: FontSize.s16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (vlue) {
                        setState(() {
                          _.valuee = vlue;
                        });
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                width: deviceInfo.localWidth,
                haigh: 60,
                color: ColorManager.kTextone,
                text: 'البحث الان',
                press: () {
                  Get.to(
                    () => const MoreProductScreen(),
                    arguments: {'search': ''},
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
