import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class CustomTextfeild extends StatelessWidget {
  final String titel;
  final bool? obsecuer;
  final IconData? icon;
  final void Function()? iconontap;
  final String? Function(String?)? onsaved;
  final String? Function(String?)? valid;
  final double width, height;
  final TextDirection? textDirection;
  final String? inialvalue;
  final BorderStyle? isBoarder;
  final int? maxLines;
  final Color? fillColor;
  final bool? isenabledBorder;
  final bool readOnly;
  final void Function()? onTap;
  final String? text;
  const CustomTextfeild({
    super.key,
    this.iconontap,
    this.obsecuer,
    this.icon,
    required this.valid,
    required this.onsaved,
    required this.titel,
    required this.width,
    required this.height,
    this.textDirection,
    this.inialvalue,
    this.isBoarder,
    this.maxLines,
    this.fillColor,
    this.isenabledBorder = true,
    this.readOnly = false,
    this.onTap,
    this.text,
  });
// 70 122
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width),
      child: Column(
        children: [
          if (text != null)
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                text!,
                style: MangeStyles().getBoldStyle(
                  color: ColorManager.kTextone,
                  fontSize: FontSize.s20,
                ),
              ),
            ),
          TextFormField(
            onTap: onTap,
            readOnly: readOnly,
            maxLines: maxLines,
            initialValue: inialvalue,
            textDirection: textDirection,
            obscureText: obsecuer == null ? false : obsecuer!,
            onSaved: onsaved,
            validator: valid,
            decoration: InputDecoration(
              prefixIcon: icon != null
                  ? IconButton(
                      onPressed: iconontap,
                      icon: Icon(icon),
                    )
                  : null,

              enabledBorder: isenabledBorder == true
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.2,
                        style: isBoarder ?? BorderStyle.solid,
                        color: ColorManager.grey2,
                      ), //<-- SEE HERE
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 0,
                        // style: BorderStyle.none,
                        color: ColorManager.grey2,
                      ), //<-- SEE HERE
                    ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1.2,
                  // style: BorderStyle.none,
                  color: ColorManager.grey2,
                ), //<-- SEE HERE
              ),

              //  enabled: true,
              filled: true,
              fillColor: fillColor ?? ColorManager.grey2.withOpacity(0.7),
              hintText: titel,
              hintStyle: MangeStyles().getLightStyle(
                color: ColorManager.kTextblack,
                fontSize: FontSize.s16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
