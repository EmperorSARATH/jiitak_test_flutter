// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/Components/Page3/Budget_range.dart';
import 'package:flutter_test_jiitak/Components/Page3/Closing_day_check_box.dart';

import 'package:flutter_test_jiitak/Components/Page3/Google_map.dart';
import 'package:flutter_test_jiitak/Components/Page3/Hour_list_lunch.dart';
import 'package:flutter_test_jiitak/Components/Page3/Hour_list_office.dart';
import 'package:flutter_test_jiitak/Components/Page3/Images_row.dart';
import 'package:flutter_test_jiitak/Components/Page3/Parking_check_box.dart';
import 'package:flutter_test_jiitak/Components/Page3/Smoke_check_box.dart';
import 'package:flutter_test_jiitak/Components/Page3/Store_header.dart';
import 'package:flutter_test_jiitak/Components/Page3/Visit_check_box.dart';
import 'package:flutter_test_jiitak/controller/Image_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Store_profile_main extends StatelessWidget {
  Store_profile_main({super.key});
  Image_controller controller = Get.put(Image_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Store_header(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                thickness: 1.0,
                color: Color.fromARGB(255, 211, 211, 211),
              ),
              SizedBox(height: 25),
              Text("店舗名*"),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(gapPadding: 2.0),
                    hintText: 'Mer キッチン',
                    suffixText: "1"),
              ),
              SizedBox(height: 25),
              Text("代表担当者名*"),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(gapPadding: 2.0),
                    hintText: '林田　絵梨花',
                    suffixText: "1"),
              ),
              SizedBox(height: 25),
              Text("店舗電話番号**"),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(gapPadding: 2.0),
                    hintText: '123 - 4567 8910',
                    suffixText: "1"),
              ),
              SizedBox(height: 25),
              Text("店舗住所*"),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(gapPadding: 2.0),
                    hintText: '大分県豊後高田市払田791-13',
                    suffixText: "1"),
              ),
              Google_map(),
              Text("店舗外観*（最大3枚まで）"),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "images/Image1.png",
                      width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      "images/Image1.png",
                      width: 100,
                      height: 100,
                    ),
                    // Gets the image from gallery but have not implemented to remove the image
                    Obx(() => controller.selectedImagePath.value == ''
                        ? IconButton(
                            iconSize: 80,
                            tooltip: "写真を追加",
                            onPressed: () {
                              controller.getImage(ImageSource.gallery);
                            },
                            icon: Icon(
                              Icons.image,
                              semanticLabel: "写真を追加",
                            ),
                          )
                        : Image.file(
                            File(controller.selectedImagePath.value),
                            height: 90,
                            width: 90,
                          )),
                  ],
                ),
              ),
              Image_row('Image2', 'Image2', 'Image2', "店舗内観*（1枚〜3枚ずつ追加してください）"),
              Image_row(
                  'Image2.0', 'Image2.1', 'Image2.2', "料理写真*（1枚〜3枚ずつ追加してください）"),
              Image_row('Image3.0', 'Image3.1', 'Image3.2',
                  "メニュー写真*（1枚〜3枚ずつ追加してください）"),
              Hour_list(),
              Hour_list_lunch(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("定休日*"),
              ),
              Closing_day_check_box(),
              Text("予算*"),
              Budget_range(),
              SizedBox(height: 20),
              Text("キャッチコピー*"),
              TextField(
                decoration: InputDecoration(hintText: "美味しい！リーズナブルなオムライスランチ！"),
              ),
              SizedBox(height: 20),
              Text("座席数*"),
              TextField(
                decoration: InputDecoration(hintText: "40席"),
              ),
              Smoke_check_box(),
              Parking_check_box(),
              Visit_check_box(),
              Images_row(),
              Text("来店プレゼント名*"),
              TextField(
                decoration: InputDecoration(hintText: "いちごクリームアイスクリーム, ジュース"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    backgroundColor: Colors
                        .orange // fromHeight use double.infinity as width and 40 is the height
                    ),
                onPressed: () {},
                child: Text('編集を保存'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Image_row extends StatelessWidget {
  var img1;
  var img2;
  var img3;
  var heading;
  Image_row(this.img1, this.img2, this.img3, this.heading);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${heading}"),
          Row(
            children: [
              Image.asset(
                "images/${img1}.png",
                width: 100,
                height: 100,
              ),
              Image.asset(
                "images/${img2}.png",
                width: 100,
                height: 100,
              ),
              Image.asset(
                "images/${img3}.png",
                width: 100,
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
