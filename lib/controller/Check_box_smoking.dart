import 'package:get/get.dart';

class Check_box_smoking extends GetxController {
  final Rxn<int> selected1 = Rxn<int>();
  final Rxn<int> selected2 = Rxn<int>();
  void checkb(b) {
    if (b == true) {
      selected1.value = null;
    }
  }

  void checka(a) {
    if (a == true) {
      selected2.value = null;
    }
  }
}
