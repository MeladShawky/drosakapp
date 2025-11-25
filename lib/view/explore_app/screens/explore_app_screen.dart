import 'package:drosak/core/resources/colors_manger.dart';
import 'package:flutter/material.dart';
import '../../../controller/explore_app/explore_app_controller.dart';
import '../widgets/app_bar/custom_app_bar_explore_screen.dart';
import '../widgets/body/body_explore_screen.dart';

class ExploreAppScreen extends StatefulWidget {
  const ExploreAppScreen({super.key});

  @override
  State<ExploreAppScreen> createState() => _ExploreAppScreenState();
}

class _ExploreAppScreenState extends State<ExploreAppScreen> {
  late ExploreAppController controller;

  @override
  void initState() {
    controller = ExploreAppController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorsManger.kBlackColor,
        appBar: CustomAppBarExploreScreen(),
        body: BodyExploreScreen(
          onTap: () {
            controller.goToMainScreen(nameSections: '', context: context);
          },
        ),
      ),
    );
  }
}
