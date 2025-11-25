import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drosak/model/on_boarding/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomItemOnBoardingScreen extends StatelessWidget {
  const CustomItemOnBoardingScreen({super.key, required this.onBoardingModel});
final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(onBoardingModel.image, height: 200.h),
          SizedBox(height: 50.h),
          Text(
            onBoardingModel.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'AA-GALAXY', fontSize: 20.sp),
          ),
        ],
      ),
    );
  }
}