import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:travel_app_flutter/application_layer/constant/myapp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_flutter/data_layer/database/connectSqlflite.dart';
import 'package:in_app_update/in_app_update.dart';

SqlDb? sqlDb;
late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  sqlDb = SqlDb();

  runApp(
    const MyApp(), // Wrap your app
  );
}
