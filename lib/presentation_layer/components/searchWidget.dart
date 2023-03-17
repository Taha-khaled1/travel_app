import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/presentation_layer/more_product/more_product.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/Filtter/Filtter_screen.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 17, right: 10, left: 10),
      child: Container(
        //    margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: ColorManager.grey2,
          borderRadius: BorderRadius.circular(20),
          // gradient: ColorManager.y,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
        child: TextField(
          style: TextStyle(color: ColorManager.kTextblack, fontSize: 20),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'ابحث عن معالم ، وجهات، فنادق',
            suffixIcon: IconButton(
              onPressed: () {
                Get.to(() => FiltterScreen());
              },
              icon: Image.asset(
                'assets/icons/filtter.png',
                width: 45,
                height: 38,
                color: ColorManager.kTextblack.withOpacity(0.7),
              ),
            ),
            prefixIcon: IconButton(
                onPressed: () {
                  Get.to(() => MoreProductScreen());
                },
                icon: Icon(
                  Icons.search,
                  color: ColorManager.kTextblack.withOpacity(0.7),
                  size: 35,
                )),
          ),
        ),
      ),
    );
  }
}
