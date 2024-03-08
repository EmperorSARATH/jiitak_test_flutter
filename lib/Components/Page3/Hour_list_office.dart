// ignore_for_file: unnecessary_new, camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_test_jiitak/controller/Hour_controller_office.dart';
import 'package:get/get.dart';

class Hour_list extends StatelessWidget {
  Hour_list({super.key});

  Hour_controller controller = Hour_controller();
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
                hint: const Text(
                  'Book Type',
                ),
                onChanged: (newValue) {
                  controller.Update_Office_hour_start(newValue.toString());
                },
                value: controller.selected_office_hour_start.value,
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
                  controller.Update_Office_hour_end(newValue.toString());
                },
                value: controller.selected_office_hour_end.value,
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
