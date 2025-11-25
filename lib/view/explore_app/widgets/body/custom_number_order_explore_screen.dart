import 'package:flutter/material.dart';

import '../../../../core/resources/colors_manger.dart';

class CustomNumberOrderExploreScreen extends StatelessWidget {
  const CustomNumberOrderExploreScreen({
    super.key, required this.number,
  });
  final int number;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10,
      left: -10,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: ColorsManger.kprimaryColor,
        child: Text(
          number.toString(),
          style: TextStyle(
            color: ColorsManger.kWhite,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ge-Diner',
          ),
        ),
      ),
    );
  }
}
