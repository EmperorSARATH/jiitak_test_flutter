// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test_jiitak/Components/Page2/Card_stamp.dart';
import 'package:get/get.dart';

class Stamp_main extends StatelessWidget {
  const Stamp_main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Color.fromARGB(255, 187, 186, 246),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Colors.blueAccent,
                ),
                Text(
                  "スタンプカード詳細",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.home_mini_rounded,
                  size: 35,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Mer キッチン",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "現在の獲得数 30 個",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ])
          ],
        ),
      ),
      body: Card_stamp(),
    );
  }
}
