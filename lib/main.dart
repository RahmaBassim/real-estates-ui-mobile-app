import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'veiw/LogIn.dart';
void main(){
  runApp(
      GetMaterialApp(
        locale: Get.deviceLocale,
        home: LogIn(),
      )
  );
}

