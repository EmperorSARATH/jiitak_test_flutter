// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/controller/Check_box_parking.dart';
import 'package:get/get.dart';

class Parking_check_box extends StatelessWidget {
  Parking_check_box({super.key});
  Check_box_parking controller = Get.put(Check_box_parking());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("喫煙席*"),
        Obx(
          () => Checkbox(
              checkColor: Colors.white,
              activeColor: Color.fromARGB(255, 231, 124, 24),
              value: controller.park_yes.value == 1,
              onChanged: (val) {
                if (val == true) {
                  controller.park_yes.value = 1;
                }

                controller.checka(val);
              }),
        ),
        Obx(
          () => Checkbox(
            checkColor: Colors.white,
            activeColor: Color.fromARGB(255, 231, 124, 24),
            value: controller.park_no.value == 1,
            onChanged: (val) {
              if (val == true) {
                controller.park_no.value = 1;
              }
              controller.checkb(val);
            },
          ),
        ),
      ],
    );
  }
}
