import 'package:drosak/core/resources/assets_values_manger.dart';
import 'package:drosak/core/resources/colors_manger.dart';
import 'package:drosak/core/resources/routes_manger.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animationBottom;
  late Animation<Offset> _animationTop;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..addStatusListener((status){
      if(status==AnimationStatus.completed){
        Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingScreen);
      }
    });
    _animationBottom = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationTop = Tween<Offset>(begin: Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.kBlackColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SlideTransition(position: _animationTop,child:   Image.asset(AssetsValuesManger.kGroup1Image)),
            Align(child: Image.asset(AssetsValuesManger.kLogImage)),
            Align(
              alignment: Alignment.bottomRight,
              child: SlideTransition(position: _animationBottom,
              child: Image.asset(AssetsValuesManger.kGroup2Image)),
            ),
          ],
        ),
      ),
    );
  }
}
