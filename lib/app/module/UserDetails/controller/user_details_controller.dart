import 'package:get/get.dart';
import 'package:testig_package/app/data/model/ContactModel.dart';

class UserDetailsController extends GetxController {
  Rx<ContactModel?> userDetails = Rx(null);

  @override
  void onInit() {
    super.onInit();
    userDetails;
  }
}
