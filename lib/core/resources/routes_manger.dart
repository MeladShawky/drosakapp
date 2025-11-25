import 'package:drosak/view/audience/screens/audience_screen.dart';
import 'package:drosak/view/educational_stages/screens/educational_stages_screen.dart';
import 'package:drosak/view/groups/screens/groups_screen.dart';
import 'package:drosak/view/main_screen/main_screen.dart';
import 'package:drosak/view/on_boarding/screens/on_boarding_screen.dart';
import 'package:drosak/view/paying/screens/paying_screen.dart';
import 'package:drosak/view/splash_screen/screens/splash_screen.dart';
import 'package:drosak/view/students/screens/students_screen.dart';
import 'package:flutter/material.dart';
import '../../view/explore_app/screens/explore_app_screen.dart';

class RoutesManger {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (context) => SplashScreen(),
    RoutesName.kOnBoardingScreen: (context) => OnBoardingScreen(),
    RoutesName.kExploreAppScreen: (context) => ExploreAppScreen(),
    RoutesName.kMain: (context) => MainScreen(),
    RoutesName.kaudience: (context) => AudienceScreen(),
    RoutesName.kstudents: (context) => StudentsScreen(),
    RoutesName.kgroups: (context) => GroupsScreen(),
    RoutesName.keducationalstages: (context) => EducationalStagesScreen(),
    RoutesName.kpaying: (context) => PayingScreen(),
  };
}

class RoutesName {
  static const String kSplashScreen = '/SplashScreen';
  static const String kOnBoardingScreen = '/KOnBoardingScreen';
  static const String kExploreAppScreen = '/KExploreAppScreen';
  static const String kMain = '/MainScreen';
  static const String kaudience = '/AudienceScreen';
  static const String kstudents = '/StudentsScreen';
  static const String kgroups = '/GroupsScreen';
  static const String keducationalstages = '/EducationalStagesScreen';
  static const String kpaying = '/PayingScreen';
}
