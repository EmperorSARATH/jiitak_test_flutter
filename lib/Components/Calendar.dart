// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.amber;
                }),
              ),
              child: Column(
                children: [
                  Text("木"),
                  Text("26"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [Text("金"), Text("27")],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [Text("土"), Text("28")],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [Text("日"), Text("29")],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [Text("月"), Text("30")],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [Text("火"), Text("31")],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [Text("水"), Text("1")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
