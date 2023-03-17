import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/screen/authentication_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/booking_screen/booking_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/home_screen/home_screen.dart';
import 'package:travel_app_flutter/presentation_layer/screen/settings/settings_screen.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookingScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const [
          Icon(
            Icons.home,
            color: ColorManager.white,
          ),
          Icon(
            Icons.flight,
            color: ColorManager.white,
          ),
          Icon(
            Icons.settings,
            color: ColorManager.white,
          ),
        ],
        color: ColorManager.navAndheader,
        buttonBackgroundColor: ColorManager.icon,
        backgroundColor: ColorManager.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(seconds: 1),
        onTap: (index) {
          setState(() {
            _page = index;
            print('x');
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_page),
      ),
    );
  }
}
