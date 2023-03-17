import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class PropertyType extends StatelessWidget {
  const PropertyType({
    super.key,
    required this.width,
    required this.haigh,
    required this.id,
    required this.image,
    required this.title,
  });
  final double width, haigh, id;
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      alignment: Alignment.bottomRight,
      height: haigh,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          // image: NetworkImage(
          //   img!.split(',').first,
          // ),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF656565).withOpacity(0.15),
            blurRadius: 2.0,
            spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: MangeStyles().getRegularStyle(
            color: ColorManager.white,
            fontSize: FontSize.s27,
          ),
        ),
      ),
    );
  }
}
