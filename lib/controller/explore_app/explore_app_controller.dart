import 'package:drosak/core/resources/const_value.dart';
import 'package:drosak/core/resources/routes_manger.dart';
import 'package:flutter/cupertino.dart';

class ExploreAppController {
  void goToMainScreen({required int value, required BuildContext context}) {
    Navigator.of(
      context,
    ).pushNamed(RoutesName.kMain, arguments: {ConstValue.kScreenIndex: value});
  }
}
