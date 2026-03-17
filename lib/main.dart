import 'package:cosmetics/core/logic/adaptive_app_dimentions.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/colors.dart';
import 'package:cosmetics/views/home/home_view.dart';
import 'package:cosmetics/views/splash_view.dart';
import 'package:cosmetics/views/checkout.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: kSemiwhite),
        scaffoldBackgroundColor: kSemiwhite,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            textStyle: TextStyles.smallSemiWhite,
            backgroundColor: kPrimaryMov, // Button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(16),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryMov),
      ),
      home: const CheckoutView(),
    );
  }
}
