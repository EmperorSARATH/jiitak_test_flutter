// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class Budget_range extends StatelessWidget {
  const Budget_range({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            child: InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefixText: "¥", isCollapsed: true),
              ),
            ),
          ),
          const Text("~"),
          Container(
            height: 100,
            width: 100,
            child: InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefixText: "¥", isCollapsed: true),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
