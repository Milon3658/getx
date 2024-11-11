import 'package:get/get.dart';
import '../controller/controller.dart';
import 'package:flutter/material.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Obx(() => Text(
                  'Device Id: ${controller.deviceId.toInt()}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Obx(() => Text(
                  'Mac Address: ${controller.macAddress}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  controller.incressDeviceId();
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  disabledForegroundColor: Colors.grey.withOpacity(0.38),
                ),
                child: const Text('Ingress Device Id'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  controller.incressMacAddress();
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  disabledForegroundColor: Colors.grey.withOpacity(0.38),
                ),
                child: const Text('Ingress Mac Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
