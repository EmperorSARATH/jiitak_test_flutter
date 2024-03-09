// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_key_in_widget_constructors, camel_case_types, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/Components/Page2/Stamp_main.dart';
import 'package:flutter_test_jiitak/Components/Page3/Store_profile_main.dart';
import 'package:flutter_test_jiitak/controller/Route_controller.dart';

import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flutter_test_jiitak/Components/Page1/Home.dart';

class Bottom_nav extends StatelessWidget {
  final Route_controller controller = Get.put(Route_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [
          Home(),
          Stamp_main(),
          Store_profile_main(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80.0,
        padding: EdgeInsets.all(16.0),
        elevation: 0,
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
              // Since there is only 3 screens other two buttons dont navigate anywhere
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.chat_bubble_outline_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Icon(
              icon,
              size: page == 2 ? 30.0 : 20.0,
              color: page == 2 ? Colors.amber : Colors.black,
            ),
            Text("${label}"),
          ],
        ),
      ),
    );
  }
}
