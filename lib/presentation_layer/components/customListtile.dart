import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    Key? key,
    this.image,
    required this.onTap,
    required this.titel,
    this.textStyle,
    this.widget,
  }) : super(key: key);
  final void Function()? onTap;
  final String? image, titel;
  final TextStyle? textStyle;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 67,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorManager.grey2,
      ),
      child: ListTile(
        style: ListTileStyle.list,
        onTap: onTap,
        leading: widget,
        trailing: const Icon(Icons.arrow_forward_ios),
        title: Text(
          titel!,
          style: MangeStyles().getBoldStyle(
            color: ColorManager.kTextblack,
            fontSize: FontSize.s18,
          ),
        ),
      ),
    );
  }
}
