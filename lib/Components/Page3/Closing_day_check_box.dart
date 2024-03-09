// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_test_jiitak/controller/Check_box_closing_day.dart';
import 'package:get/get.dart';

class Closing_day_check_box extends StatelessWidget {
  Closing_day_check_box({super.key});
  Check_box_closing_day controller = Get.put(Check_box_closing_day());

  @override
  Widget build(BuildContext context) {
    return Obx(() => SingleChildScrollView(
            child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected1.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected1.value = 1
                        : controller.selected1.value = null;
                  },
                ),
                Text("月"),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected2.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected2.value = 1
                        : controller.selected2.value = null;
                  },
                ),
                Text("火"),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected3.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected3.value = 1
                        : controller.selected3.value = null;
                  },
                ),
                Text("水"),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected4.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected4.value = 1
                        : controller.selected4.value = null;
                  },
                ),
                Text("木"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected5.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected5.value = 1
                        : controller.selected5.value = null;
                  },
                ),
                Text("月"),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected6.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected6.value = 1
                        : controller.selected6.value = null;
                  },
                ),
                Text("火"),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected7.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected7.value = 1
                        : controller.selected7.value = null;
                  },
                ),
                Text("水"),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Color.fromARGB(255, 231, 124, 24),
                  value: controller.selected8.value == 1,
                  onChanged: (val) {
                    val ?? true
                        ? controller.selected8.value = 1
                        : controller.selected8.value = null;
                  },
                ),
                Text("木"),
              ],
            ),
          ],
        )));
  }
}
