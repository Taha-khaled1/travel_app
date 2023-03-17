import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/detalis_screen/detalis_screen.dart';

class MostVisitedRealEstate extends StatelessWidget {
  const MostVisitedRealEstate(
      {super.key, this.future, required this.title, required this.img});
  final Future<dynamic>? future;
  final String title;
  final String img;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (ctx, snapshot) {
        // Checking if future is resolved or not
        if (snapshot.connectionState == ConnectionState.done) {
          // If we got an error
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: const TextStyle(fontSize: 18),
              ),
            );

            // if we got our data
          } else if (snapshot.hasData) {
            // Extracting data from snapshot object

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
                      itemCount: 8, //controller.catogeryModels?.data?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CardProperty(
                          x: img,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        }

        // Displaying LoadingSpinner to indicate waiting state
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      // Future that needs to be resolved
      // inorder to display something on the Canvas
      future: future,
    );
  }
}

class CardProperty extends StatelessWidget {
  const CardProperty({super.key, required this.x});
  final String x;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const PropertyDetalisScreen());
      },
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
                  image: AssetImage(x),
                  // image: NetworkImage(
                  //   searchesModel!.imgs == null || searchesModel!.imgs == ""
                  //       ? 'https://akm-img-a-in.tosshub.com/businesstoday/images/story/202204/ezgif-sixteen_nine_161.jpg?size=948:533'
                  //       : "${MangeAPi.baseurl}/${searchesModel!.imgs!.split(',').first}",
                  // ),
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
                    'البارشوت المائي', //searchesModel!.title ?? '',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kTexttow,
                      fontSize: FontSize.s14,
                    ),
                  ),
                  Text(
                    'دبي',
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
