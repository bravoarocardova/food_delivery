import 'package:flutter/material.dart';
import 'package:food_delivery/core/theme/app_theme.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      // themeMode: ThemeMode.system,
      // darkTheme: ThemeData.dark(),
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: "Food Delivery",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
