// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/Components/Bottom_nav.dart';
import 'package:flutter_test_jiitak/Components/Calendar.dart';
import 'package:flutter_test_jiitak/Components/Header.dart';
import 'package:flutter_test_jiitak/Components/Home.dart';
import 'package:flutter_test_jiitak/Components/Job_info_card.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom_nav(),
    );
  }
}
