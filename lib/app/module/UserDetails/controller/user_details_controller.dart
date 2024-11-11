import 'package:get/get.dart';
import 'package:testig_package/app/data/model/ProductModel.dart';

class UserDetailsController extends GetxController {
  Rx<ProductModel?> userDetails = Rx(null);

  @override
  void onInit() {
    super.onInit();
    userDetails;
  }
}
