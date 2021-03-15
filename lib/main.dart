import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizzacom/routes.dart';
import 'package:pizzacom/utils/colors.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(AppController());
    return GetMaterialApp(
      title: 'Pizza Planet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.RED,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: routes(),
    );
  }
}
