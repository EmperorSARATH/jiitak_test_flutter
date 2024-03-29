// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class Hour_controller extends GetxController {
  final selected_office_hour_start = "1:00".obs;
  final selected_office_hour_end = "1:00".obs;

  void Update_Office_hour_start(String value) {
    selected_office_hour_start.value = value;
  }

  void Update_Office_hour_end(String value) {
    selected_office_hour_end.value = value;
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
