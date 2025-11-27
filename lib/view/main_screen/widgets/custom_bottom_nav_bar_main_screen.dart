import 'package:drosak/core/resources/colors_manger.dart';
import 'package:drosak/model/main_screen/taps_datails_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBarMainScreen extends StatelessWidget {
  const CustomBottomNavBarMainScreen({
    super.key,
    required this.listIcon,
    required this.OutPutBottomNavBar,
    required this.onTap,
    this.initialIndex = 0,
  });
  final List<TapsDatailsModel> listIcon;
  final ValueChanged<int> onTap;
  final Stream<int> OutPutBottomNavBar;
  final int initialIndex;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      initialData: initialIndex,
      stream: OutPutBottomNavBar,
      builder: (context, snapshot) {
        return BottomNavigationBar(
          onTap: onTap,
          currentIndex: snapshot.data ?? 0,
          backgroundColor: ColorsManger.kGrayLight,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: ColorsManger.kBlackLight,
          items: [
            for (int i = 0; i < listIcon.length; i++)
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  colorFilter: ColorFilter.mode(
                    i != (snapshot.data ?? 0)
                        ? ColorsManger.kBlackLight
                        : ColorsManger.kprimaryColor,
                    BlendMode.srcIn,
                  ),
                  listIcon[i].icon,
                ),
                label: listIcon[i].title,
              ),
          ],
        );
      },
    );
  }
}
