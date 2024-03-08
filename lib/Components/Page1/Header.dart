// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 250,
          child: const SearchBar(
            hintText: "北海道, 札幌市",
          ),
        ),
        Icon(
          Icons.settings_input_composite_rounded,
          color: Colors.grey,
        ),
        Icon(
          Icons.favorite_outline,
          color: Colors.red[300],
        ),
      ],
    );
  }
}
