import 'package:drosak/controller/main_screen/main_screen_controller.dart';
import 'package:drosak/view/main_screen/widgets/custom_bottom_nav_bar_main_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

late MainScreenController _controller;

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    _controller = MainScreenController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder<int>(
        stream: _controller.outputDataBody,
        builder: (context, snapshot) {
          return _controller.listBottomNavBarTabs[snapshot.data ?? 0].screen;
        },
      ),
      bottomNavigationBar: CustomBottomNavBarMainScreen(
        listIcon: _controller.listBottomNavBarTabs,
        OutPutBottomNavBar: _controller.outputDataBottomNavBar,
        onTap: (int value) {
          _controller.onTapAtTabItemBottomNavBar(value);
        },
      ),
    );
  }
}
