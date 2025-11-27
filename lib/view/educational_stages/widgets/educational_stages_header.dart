import 'package:drosak/core/resources/colors_manger.dart';
import 'package:drosak/core/resources/const_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarEducationalStages extends StatelessWidget {
  const CustomAppBarEducationalStages({super.key,required this.onAdd,required this.onSearch});
final VoidCallback? onAdd;
final VoidCallback? onSearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomRight,
      color: ColorsManger.kprimaryColor,
      height: 70.h,
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: 25.h,
        bottom: 12.h,
      ),
      child: Row(
        children: [
          Text(
            ConstValue.kEducationalStages,
            style: TextStyle(
              color: ColorsManger.kWhite,
              fontSize: 15,
              fontFamily: 'Ge-Diner',
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: onAdd,
            icon: Icon(
              Icons.add_circle_outline_rounded,
              size: 30,
              color: ColorsManger.kWhite,
            ),
          ),
          IconButton(
            onPressed: onSearch,
            icon: Icon(Icons.search, size: 30, color: ColorsManger.kWhite),
          ),
        ],
      ),
    );
  }
}
