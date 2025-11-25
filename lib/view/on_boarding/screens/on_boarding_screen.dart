
import 'package:drosak/controller/on_boarding/on_boarding_controller.dart';
import 'package:drosak/core/resources/colors_manger.dart';

import 'package:drosak/core/resources/const_value.dart';
import 'package:drosak/view/on_boarding/widgets/body/custom_page_view_on_boarding_screen.dart';
import 'package:drosak/view/on_boarding/widgets/bottom_nav_bar/custom_bottom_nav_bar_on_boarding_screen.dart';
import 'package:flutter/material.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
 late OnBoardingController _controller;
  @override
  void initState() {
    _controller=OnBoardingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.kWhite,
      bottomNavigationBar: CustomBottomNavBarOnBoardingScreen(
        onPressedSkip: (){_controller.skip(context);},
        onPressedNext: (){
          _controller.goNext();
        },
        dotCount: ConstListValues.listOnBoardingImageModel.length,
         outPutDotIndicator: _controller.outPutDotIndicator,
      ),
      body: SafeArea(child: CustomPageViewOnBoardingScreen(controller: _controller.pageControllerOnBoardingScreen,)),
    );
  }
}
