import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/colors_manger.dart';
import '../../../../model/explore_screen/explore_screen_model.dart';

class CustomContainerOfNameAndImageExploreScreen extends StatelessWidget {
  const CustomContainerOfNameAndImageExploreScreen({
    super.key, required this.exploreScreenModel,
  });
  final ExploreScreenModel exploreScreenModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManger.kBlackColor,
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: ColorsManger.kprimaryColor,
            blurStyle: BlurStyle.outer,
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:7.h,vertical:3.w ),
            width:double.infinity,
            margin:EdgeInsets.symmetric(horizontal: 5.h,vertical: 6.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: ColorsManger.kprimaryColor
            ),
            child:Text(exploreScreenModel.text, style: TextStyle(
              color: ColorsManger.kWhite,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              fontFamily: 'Ge-Diner',
            ),),
          ),
          SvgPicture.asset(exploreScreenModel.image,height: 63.h,),
        ],
      ),
    );
  }
}
