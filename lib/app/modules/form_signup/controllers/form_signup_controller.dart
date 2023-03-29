import 'package:get/get.dart';

class FormSignupController extends GetxController {
  RxBool selected = false.obs;

  updateValye(value) {
    print("ini valuenya ${value}");
    selected.value = value;
    print(selected.value);

    update();
  }
}
