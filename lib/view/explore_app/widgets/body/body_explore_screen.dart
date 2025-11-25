
import 'package:flutter/material.dart';


import 'custom_grid_view_of_item_explore_screen.dart';

class BodyExploreScreen extends StatelessWidget {
  const BodyExploreScreen({
    super.key, required this.onTap,
  });
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        CustomGridViewOfItemExploreScreen(onTap: onTap),
      ],
    );
  }
}