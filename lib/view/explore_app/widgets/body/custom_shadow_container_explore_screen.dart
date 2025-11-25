import 'package:flutter/material.dart';

import '../../../../core/resources/colors_manger.dart';

class CustomShadowContainerExploreScreen extends StatelessWidget {
  const CustomShadowContainerExploreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -16,
      left: -16,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
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
      ),
    );
  }
}
