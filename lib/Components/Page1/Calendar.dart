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
                  return Colors.amber;
                }),
              ),
              child: Column(
                children: [
                  Text(
                    "木",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "26",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    "金",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "27",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    "土",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "28",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    "日",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "29",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    "月",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "30",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    "火",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "31",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Text(
                    "水",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "1",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
