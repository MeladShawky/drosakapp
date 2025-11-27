import 'dart:async';

import 'package:drosak/core/resources/assets_values_manger.dart';
import 'package:drosak/core/resources/const_value.dart';
import 'package:drosak/model/main_screen/taps_datails_model.dart';
import 'package:drosak/view/audience/screens/audience_screen.dart';
import 'package:drosak/view/educational_stages/screens/educational_stages_screen.dart';
import 'package:drosak/view/groups/screens/groups_screen.dart';
import 'package:drosak/view/paying/screens/paying_screen.dart';
import 'package:drosak/view/students/screens/students_screen.dart';

class MainScreenController {
  int currentIndexScreen = 0;
  late StreamController<int> controllerBody;
  late Sink<int> inputDataBody;
  late Stream<int> outputDataBody;

  late StreamController<int> controllerBottomNavBar;
  late Sink<int> inputDataBottomNavBar;
  late Stream<int> outputDataBottomNavBar;
  MainScreenController() {
    initController();
  }
  void initController() {
    controllerBody = StreamController<int>.broadcast();
    inputDataBody = controllerBody.sink;
    outputDataBody = controllerBody.stream;
    inputDataBody.add(currentIndexScreen);
    controllerBottomNavBar = StreamController<int>.broadcast();
    inputDataBottomNavBar = controllerBottomNavBar.sink;
    outputDataBottomNavBar = controllerBottomNavBar.stream;
    inputDataBottomNavBar.add(currentIndexScreen);
  }

  void disposeController() {
    controllerBody.close();
    inputDataBody.close();
    controllerBottomNavBar.close();
    inputDataBottomNavBar.close();
  }

  final List<TapsDatailsModel> listBottomNavBarTabs = [
    TapsDatailsModel(
      screen: const EducationalStagesScreen(),
      title: ConstValue.kEducationalStages,
      icon: AssetsValuesManger.kEducationalStagesIcon,
    ),
    TapsDatailsModel(
      screen: const GroupsScreen(),
      title: ConstValue.kGroups,
      icon: AssetsValuesManger.kGroupsIcon,
    ),
    TapsDatailsModel(
      screen: const StudentsScreen(),
      title: ConstValue.kStudents,
      icon: AssetsValuesManger.kStudentsIcon,
    ),
    TapsDatailsModel(
      screen: const AudienceScreen(),
      title: ConstValue.kTheAudience,
      icon: AssetsValuesManger.kTheAudienceIcon,
    ),
    TapsDatailsModel(
      title: ConstValue.kPaying,
      screen: const PayingScreen(),
      icon: AssetsValuesManger.kPaymentIcon,
    ),
  ];
  void onTapAtTabItemBottomNavBar(int index) {
    currentIndexScreen = index;
    inputDataBody.add(currentIndexScreen);
    inputDataBottomNavBar.add(currentIndexScreen);
  }
}
