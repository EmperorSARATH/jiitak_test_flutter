// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/Components/Page1/Calendar.dart';
import 'package:flutter_test_jiitak/Components/Page1/Header.dart';
import 'package:flutter_test_jiitak/Components/Page1/Job_info_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: const Header(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: CircleBorder(),
          mini: true,
          child: const Icon(
            Icons.location_on_outlined,
            size: 30.0,
          ),
          onPressed: () => (),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.amber[400],
                  child: Center(child: Text("2022年 5月 26日（木）")),
                ),
                Calendar(),
                Job_info_card("Job"),
                Job_info_card("Page1"),
              ],
            ),
          ),
        ));
  }
}
