import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt deviceId = 0.obs;
  RxInt macAddress = 0.obs;

  void incressDeviceId() {
    deviceId++;
  }

  void incressMacAddress() {
    macAddress++;
  }
}