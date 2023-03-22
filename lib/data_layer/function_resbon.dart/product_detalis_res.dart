// // ignore_for_file: file_names

import 'package:travel_app_flutter/data_layer/database/connectdatabase.dart';
import 'package:travel_app_flutter/presentation_layer/resources/msnge_api.dart';

getTripDetalisRespon(int idproduct) async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    '${APiMange.detalis}/$idproduct',
  );

  return respons;
}

// addCartRespon(String userId, String productId, String quantity) async {
//   Curd curd = Curd();
//   var respons = await curd.postrequest(
//     APiMange.gteAddCartList,
//     {
//       'user_id': userId,
//       'id': productId, //productId
//       "quantity": quantity,
//       "variant": "",
//     },
//     encode: true,
//     myheadersres: myheaders2,
//   );
//   return respons;
// }
