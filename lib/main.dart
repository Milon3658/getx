import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:testig_package/app/routes/AppRoutes.dart';
import 'package:testig_package/app/styles/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      theme: lightTheme,
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}
