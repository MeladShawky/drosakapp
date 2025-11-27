import 'package:drosak/core/resources/assets_values_manger.dart';
import 'package:drosak/core/resources/colors_manger.dart';
import 'package:flutter/material.dart';

import 'package:drosak/view/educational_stages/widgets/educational_stages_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationalStagesScreen extends StatelessWidget {
  const EducationalStagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBarEducationalStages(onAdd: () {}, onSearch: () {}),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: ColorsManger.kprimaryColor),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: ColorsManger.kprimaryColor,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: 1,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Padding(
                padding: EdgeInsets.only(right: 22.w, left: 10.w, top: 6.h, bottom: 6.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الصف الأول الإعدادي',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: ColorsManger.kWhite,
                              fontFamily: 'Ge-Dinar',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'تلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلا',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: 'Ge-Dinar',
                              color: ColorsManger.kGray2LightText,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 9.w),
                    Image.asset(
                      AssetsValuesManger.kTestImage,
                      height: 64.h,
                      width: 64.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
