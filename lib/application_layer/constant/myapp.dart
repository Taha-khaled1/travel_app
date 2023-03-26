import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:travel_app_flutter/presentation_layer/components/navbar.dart';
import 'package:travel_app_flutter/presentation_layer/resources/routes_pages.dart';
import 'package:travel_app_flutter/presentation_layer/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// app()async{
//    AppUpdateInfo? _updateInfo;

//   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

//   bool _flexibleUpdateAvailable = false;

//   PackageInfo packageInfo = await PackageInfo.fromPlatform();
//   String currentVersion = packageInfo.version;
//   // String latestVersion = await fetchLatestVersionFromServer();
// AppUpdateInfo updateInfo = await InAppUpdate.checkForUpdate();

// if (updateInfo.updateAvailable) {
//   // An update is available on the Google Play Store
//   if (updateInfo.updatePriority == UpdatePriority.immediate ) {
//     // Prompt the user to download and install the update immediately
//     InAppUpdate.performImmediateUpdate();
//   } else {
//     // Prompt the user to download and install the update at their convenience
//     InAppUpdate.startFlexibleUpdate();
//   }
// }
// }

  //  Future<void> checkForUpdate() async {
  //   InAppUpdate.checkForUpdate().then((info) {
  //     setState(() {
  //       _updateInfo = info;
  //     });
  //   }).catchError((e) {
  //     showSnack(e.toString());
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      // getPages: getPage,
      home: Example(),
    );
  }
}
