// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class Card_stamp extends StatelessWidget {
  const Card_stamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int k = 0; k < 2; k++)
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Material(
                              elevation: 10,
                              child: Container(
                                child: GridView.count(
                                  crossAxisCount: 5,
                                  children: [
                                    for (int k = 0; k < 15; k++)
                                      Image.asset("images/Star 1.png")
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: 200,
                                color: Color.fromARGB(57, 253, 231, 231),
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 50),
                      Text("2/2"),
                    ]),
              ),
              Form(),
            ],
          ),
        ),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("スタンプ獲得履歴"),
        SizedBox(height: 20),
        Text(
          "2021 / 11 / 18",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'スタンプを獲得しました。',
              suffix: Text("1")),
        ),
        SizedBox(height: 20),
        Text(
          "2021 / 11 / 17",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'スタンプを獲得しました。',
              suffixText: "1"),
        ),
        SizedBox(height: 20),
        Text(
          "2021 / 11 / 16",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'スタンプを獲得しました。',
              suffixText: "1"),
        ),
        SizedBox(height: 20),
        Text(
          "2021 / 11 / 13",
          style: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'スタンプを獲得しました',
              suffixText: "1"),
        ),
      ],
    );
  }
}
