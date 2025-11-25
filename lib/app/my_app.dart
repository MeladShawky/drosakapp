import 'package:drosak/core/resources/colors_manger.dart';
import 'package:drosak/core/resources/routes_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.routesName});
final String routesName;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManger.kBlackColor,
        ),
        debugShowCheckedModeBanner: false,
        routes: RoutesManger.routes ,
        initialRoute: routesName,
      ),
    );
  }
}
