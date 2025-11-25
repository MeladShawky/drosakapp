import 'package:flutter/material.dart';

import '../../../../core/resources/const_value.dart';
import 'custom_item_explore_screen.dart';

class CustomGridViewOfItemExploreScreen extends StatelessWidget {
  const CustomGridViewOfItemExploreScreen({super.key, required this.onTap});
final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30),
        itemCount: ConstListValues.listExploreScreenModel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 138 / 108,
          crossAxisCount: 2,
          crossAxisSpacing: 39,
          mainAxisSpacing: 34,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap:onTap ,
          child: CustomItemExploreScreen(
            number:index+1,
            exploreScreenModel: ConstListValues.listExploreScreenModel[index],
          ),
        ),
      ),
    );
  }
}
