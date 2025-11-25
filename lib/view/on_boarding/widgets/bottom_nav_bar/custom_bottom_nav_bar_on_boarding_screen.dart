
import 'package:dots_indicator/dots_indicator.dart';
import 'package:drosak/core/resources/colors_manger.dart';
import 'package:drosak/core/resources/const_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBarOnBoardingScreen extends StatelessWidget {
  const CustomBottomNavBarOnBoardingScreen({
    super.key, required this.dotCount, this.onPressedNext, required this.outPutDotIndicator, this.onPressedSkip,
  });
final int dotCount;

  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedSkip;
final Stream<double> outPutDotIndicator;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 10.sp),
      color: ColorsManger.kprimaryColor,
      height: 39.h,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(onTap: onPressedSkip,child: CustomText(text: ConstValue.kSkip,)),
            Directionality(
              textDirection: TextDirection.rtl,
              child: StreamBuilder<double>(
                builder: (context,snapshot)=>
                 DotsIndicator(
                  dotsCount: dotCount,
                  position: snapshot.data==null?0:snapshot.data!,
                  decorator: DotsDecorator(
                    color: ColorsManger.kWhite.withAlpha(30) ,
                    activeColor: ColorsManger.kWhite,
                  ),
                ), stream:outPutDotIndicator,
              ),
            ),
            InkWell(
              onTap: onPressedNext,
                child: CustomText(text: ConstValue.kNext,)),
          ]
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Ge-Diner',
        color: ColorsManger.kWhite,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}


