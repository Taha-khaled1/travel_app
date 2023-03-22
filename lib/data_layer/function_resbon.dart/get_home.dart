import 'package:travel_app_flutter/data_layer/database/connectdatabase.dart';
import 'package:travel_app_flutter/presentation_layer/resources/msnge_api.dart';

getAdventuresRespon() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.adventures,
  );
  return respons;
}

getBoatsRespon() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.boats,
  );
  return respons;
}

getTripsRespon() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.trips,
  );
  return respons;
}

getCatogeryRespon() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.catogery,
  );
  return respons;
}
