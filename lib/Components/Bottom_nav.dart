// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/Components/Page2/Stamp_main.dart';
import 'package:flutter_test_jiitak/controller/Route_controller.dart';

import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flutter_test_jiitak/Components/Home.dart';

class Bottom_nav extends StatelessWidget {
  final Route_controller controller = Get.put(Route_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [Home(), Stamp_main()],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(
                context,
                icon: Icons.search,
                page: 0,
                label: "さがす",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.card_travel,
                page: 1,
                label: "お仕事",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.settings_overscan_sharp,
                page: 2,
                label: "打刻する",
              ),
              Icon(Icons.chat_bubble_outline),
              Icon(Icons.person)
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () {
        return controller.goToTab(page);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
          ),
          Text("${label}")
        ],
      ),
    );
  }
}
