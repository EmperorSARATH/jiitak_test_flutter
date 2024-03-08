// ignore_for_file: prefer_const_constructors

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
          title: const Header(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
