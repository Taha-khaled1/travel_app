import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/domin_layer/TriphomeModel.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/msnge_api.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/detalis_screen.dart';

class MostVisitedRealEstate extends StatelessWidget {
  const MostVisitedRealEstate({super.key, this.data, required this.title});
  final TriphomeModel? data;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              title,
              style: MangeStyles().getBoldStyle(
                color: ColorManager.kTextone,
                fontSize: FontSize.s18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data?.trip?.length,
              itemBuilder: (BuildContext context, int index) {
                return CardProperty(
                  tripsModel: data?.trip![index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CardProperty extends StatelessWidget {
  const CardProperty({
    super.key,
    required this.tripsModel,
  });
  final TripsModel? tripsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => PropertyDetalisScreen(),
            arguments: {"id": tripsModel!.id});
      },
      // onTap: () {
      //   Get.to(() => const PropertyDetalisScreen());
      // },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(right: 10, left: 4),
        height: 160,
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                      '${APiMange.baseurlImage}/${tripsModel!.image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tripsModel!.name.toString(), //searchesModel!.title ?? '',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kTexttow,
                      fontSize: FontSize.s14,
                    ),
                  ),
                  Text(
                    tripsModel!.country.toString(),
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kTextblack,
                      fontSize: FontSize.s14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
