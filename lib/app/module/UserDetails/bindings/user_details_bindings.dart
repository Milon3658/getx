import 'package:get/get.dart';
import 'package:testig_package/app/module/UserDetails/controller/user_details_controller.dart';

class UserDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(UserDetailsController());
  }
}
