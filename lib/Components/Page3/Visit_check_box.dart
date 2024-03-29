// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_test_jiitak/controller/Check_box_visit.dart';
import 'package:get/get.dart';

class Visit_check_box extends StatelessWidget {
  Visit_check_box({super.key});
  Check_box_visit controller = Get.put(Check_box_visit());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("喫煙席*"),
        Obx(
          () => Checkbox(
              checkColor: Colors.white,
              activeColor: Color.fromARGB(255, 231, 124, 24),
              value: controller.visit_yes.value == 1,
              onChanged: (val) {
                if (val == true) {
                  controller.visit_yes.value = 1;
                }

                controller.checka(val);
              }),
        ),
        Obx(
          () => Checkbox(
            checkColor: Colors.white,
            activeColor: Color.fromARGB(255, 231, 124, 24),
            value: controller.visit_no.value == 1,
            onChanged: (val) {
              if (val == true) {
                controller.visit_no.value = 1;
              }
              controller.checkb(val);
            },
          ),
        ),
      ],
    );
  }
}
