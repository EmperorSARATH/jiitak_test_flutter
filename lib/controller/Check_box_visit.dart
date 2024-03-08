// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:get/get.dart';

class Check_box_visit extends GetxController {
  final Rxn<int> visit_yes = Rxn<int>();
  final Rxn<int> visit_no = Rxn<int>();

  void checka(a) {
    if (a == true) {
      visit_no.value = null;
    }
  }

  void checkb(b) {
    if (b == true) {
      visit_yes.value = null;
    }
  }
}
