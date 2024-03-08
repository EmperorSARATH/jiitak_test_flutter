// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:get/get.dart';

class Check_box_parking extends GetxController {
  final Rxn<int> park_yes = Rxn<int>();
  final Rxn<int> park_no = Rxn<int>();

  void checka(a) {
    if (a == true) {
      park_no.value = null;
    }
  }

  void checkb(b) {
    if (b == true) {
      park_yes.value = null;
    }
  }
}
