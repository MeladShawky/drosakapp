import 'dart:async';

import 'package:drosak/core/resources/const_value.dart';
import 'package:drosak/core/resources/routes_manger.dart';
import 'package:flutter/material.dart';

class OnBoardingController{
  double currentIndex=0;
  PageController pageControllerOnBoardingScreen=PageController(initialPage:0);
  late StreamController<double> streamControllerDotIndicator;
  late Sink<double> inputDotIndicator;
  late Stream<double> outPutDotIndicator;
  OnBoardingController(){
    initController();
  }
  void initController(){
    streamControllerDotIndicator=StreamController();
    inputDotIndicator=streamControllerDotIndicator.sink;
    outPutDotIndicator=streamControllerDotIndicator.stream;
    inputDotIndicator.add(currentIndex);
  }
  void disposeController(){
    streamControllerDotIndicator.close();
    inputDotIndicator.close();
  }
  void goNext(){
    if(currentIndex+1>=ConstListValues.listOnBoardingImageModel.length){
      currentIndex=0;
    } else {
      currentIndex++;
    }
    pageControllerOnBoardingScreen.animateToPage(currentIndex.toInt(), duration: Duration(seconds: 1), curve: Curves.easeInOut);
    inputDotIndicator.add(currentIndex);
  }
  void skip(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil(RoutesName.kExploreAppScreen, (route)=>false);
  }
}