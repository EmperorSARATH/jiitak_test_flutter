// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Store_header extends StatelessWidget {
  const Store_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios_new),
          Text("店舗プロフィール編集"),
          Icon(Icons.notifications_none_sharp),
        ],
      ),
    );
  }
}
