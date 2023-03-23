import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class ColectionText extends StatelessWidget {
  const ColectionText({
    Key? key,
    required this.text1,
    this.text2,
    this.x = false,
    required this.titl,
  }) : super(key: key);
  final String? text1, text2, titl;
  final bool x;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: x
            ? RichText(
                // Controls visual overflow
                overflow: TextOverflow.clip,

                // The number of font pixels for each logical pixel
                textScaleFactor: 1,
                text: TextSpan(
                  text: titl,
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.kTextone,
                    fontSize: FontSize.s18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: text1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.kTextblack,
                        )),
                    const TextSpan(
                        text: '  -  ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.kTextblack,
                        )),
                    TextSpan(
                      text: text2,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.kTextblack,
                      ),
                    ),
                  ],
                ),
              )
            : RichText(
                // Controls visual overflow
                overflow: TextOverflow.clip,

                // The number of font pixels for each logical pixel
                textScaleFactor: 1,
                text: TextSpan(
                  text: titl,
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.kTextone,
                    fontSize: FontSize.s18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: text1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.kTextblack,
                        )),
                    if (text2 != null)
                      const TextSpan(
                          text: '  -  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorManager.kTextblack,
                          )),
                    if (text2 != null)
                      TextSpan(
                        text: text2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.kTextblack,
                        ),
                      ),
                  ],
                ),
              ),
      ),
    );
  }
}
