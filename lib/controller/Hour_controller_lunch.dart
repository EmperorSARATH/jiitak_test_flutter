// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class Hour_controller_lunch extends GetxController {
  final selected_lunch_hour_start = "1:00".obs;
  final selected_lunch_hour_end = "1:00".obs;
  List lunch_hour_start = ["1:00", "2:00", "3:00", "4:00", "5:00"];
  List lunch_hour_end = ["1:00", "2:00", "3:00", "4:00", "5:00"];

  void Update_lunch_hour_start(String value) {
    selected_lunch_hour_start.value = value;
  }

  void Update_lunch_hour_end(String value) {
    selected_lunch_hour_end.value = value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
