import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/router/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kantumruy Pro',
        primaryColor: primaryColor,
        colorScheme:  const ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: tertiaryColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:  const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme:  const IconThemeData(color: neutral5Color),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            textStyle:  const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            // padding:  const EdgeInsets.symmetric(
            //   horizontal: 50,
            //   vertical: 15,
            // ),
            shadowColor: Colors.transparent,
          ),
        ),
      ),
      onGenerateRoute: onGenerateRoute,

    );
  }
}
