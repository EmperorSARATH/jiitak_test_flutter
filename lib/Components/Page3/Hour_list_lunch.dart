// ignore_for_file: unnecessary_new, camel_case_types, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_test_jiitak/controller/Hour_controller_lunch.dart';

import 'package:get/get.dart';

class Hour_list_lunch extends StatelessWidget {
  Hour_list_lunch({super.key});

  Hour_controller_lunch controller = Get.put(Hour_controller_lunch());
  List<String> dropdown = ["1:00", "2:00", "3:00", "4:00", "5:00"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("営業時間*"),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Obx(
              () => DropdownButton<String>(
                hint: Text(
                  'Book Type',
                ),
                onChanged: (newValue) {
                  controller.Update_lunch_hour_start(newValue.toString());
                },
                value: controller.selected_lunch_hour_start.value,
                items: dropdown.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Text("〜"),
            Obx(
              () => DropdownButton<String>(
                hint: Text(
                  'Book Type',
                ),
                onChanged: (newValue) {
                  controller.Update_lunch_hour_end(newValue.toString());
                },
                value: controller.selected_lunch_hour_end.value,
                items: dropdown.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
