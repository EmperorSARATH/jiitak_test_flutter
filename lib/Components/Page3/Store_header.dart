// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/controller/Route_controller.dart';
import 'package:get/get.dart';

class Store_header extends StatelessWidget {
  Store_header({super.key});
  Route_controller controller = Get.put(Route_controller());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => controller.goToTab(1),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Colors.blueAccent,
            ),
          ),
          Text("店舗プロフィール編集"),
          Icon(Icons.notifications_none_sharp),
        ],
      ),
    );
  }
}
