import 'package:get/get.dart';

import '../controllers/form_signup_controller.dart';

class FormSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormSignupController>(
      () => FormSignupController(),
    );
  }
}
