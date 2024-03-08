import 'package:flutter/material.dart';
import 'package:flutter_test_jiitak/controller/Check_box_smoking.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Smoke_check_box extends StatelessWidget {
  Smoke_check_box({super.key});
  Check_box_smoking controller = Get.put(Check_box_smoking());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("喫煙席*"),
        Obx(
          () => Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.blueGrey,
              value: controller.selected1.value == 1,
              onChanged: (val) {
                if (val == true) {
                  controller.selected1.value = 1;
                }

                controller.checka(val);
              }),
        ),
        Obx(
          () => Checkbox(
            checkColor: Colors.white,
            activeColor: Colors.blueGrey,
            value: controller.selected2.value == 1,
            onChanged: (val) {
              if (val == true) {
                controller.selected2.value = 1;
              }
              controller.checkb(val);
            },
          ),
        ),
      ],
    );
  }
}
