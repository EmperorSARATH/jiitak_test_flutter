// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Job_info_card extends StatelessWidget {
  var string;
  Job_info_card(this.string);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: Colors.white,
        width: 350,
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "images/${string}.png",
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                  child: Text(
                "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[200]),
                    ),
                    onPressed: () => {},
                    child: Text(
                      "介護付き有料老人ホーム",
                      style: TextStyle(color: Colors.orange[500]),
                    ),
                  ),
                  Text(
                    "¥ 6,000",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )
                ],
              ),
              Container(
                  child: Column(
                children: [
                  Details("5月 31日（水）08 : 00 ~ 17 : 00"),
                  Details("北海道札幌市東雲町3丁目916番地17号"),
                  Details("交通費 300円"),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("住宅型有料老人ホームひまわり倶楽部"),
                  Icon(
                    size: 50,
                    Icons.favorite_outline,
                    color: Colors.grey[300],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  var string;
  Details(this.string);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${string}",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
