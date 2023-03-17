import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class LocationHomeWidget extends StatelessWidget {
  const LocationHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text(
            "موقع المكان",
            style: MangeStyles().getRegularStyle(
              color: ColorManager.kTexttow,
              fontSize: FontSize.s18,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          height: 190,
          child: const GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              bearing: 192.8334901395799,
              target: LatLng(37.43296265331129, -122.08832357078792),
              tilt: 59.440717697143555,
              zoom: 19.151926040649414,
            ),
            // markers: _markers,
          ),
        ),
      ],
    );
  }
}

class TowText extends StatelessWidget {
  const TowText({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: MangeStyles().getRegularStyle(
            color: ColorManager.kTextblack,
            fontSize: FontSize.s18,
          ),
        ),
        Text(
          text2,
          style: MangeStyles().getRegularStyle(
            color: ColorManager.kTexttow,
            fontSize: FontSize.s18,
          ),
        ),
      ],
    );
  }
}
