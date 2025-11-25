import 'package:drosak/model/explore_screen/explore_screen_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/colors_manger.dart';
import 'custom_container_of_name_and_image_explore_screen.dart';
import 'custom_number_order_explore_screen.dart';
import 'custom_shadow_container_explore_screen.dart';

class CustomItemExploreScreen extends StatelessWidget {
  const CustomItemExploreScreen({
    super.key, required this.exploreScreenModel, required this.number,
  });
final ExploreScreenModel exploreScreenModel;
final int number;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomShadowContainerExploreScreen(),
        CustomContainerOfNameAndImageExploreScreen(exploreScreenModel: exploreScreenModel,),
        Positioned(
          bottom: -16,
          left: -16,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: ColorsManger.kBlackColor,
          ),
        ),
        CustomNumberOrderExploreScreen(number:number),
      ],
    );
  }
}
