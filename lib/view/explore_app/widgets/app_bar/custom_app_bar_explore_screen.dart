import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_manger.dart';
import '../../../../core/resources/const_value.dart';

class CustomAppBarExploreScreen extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarExploreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        ConstValue.kExploreApp,
        style: TextStyle(
          color: ColorsManger.kprimaryColor,
          fontSize: 20.sp,
          fontFamily: 'Ge-Diner',
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
