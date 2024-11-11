import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testig_package/app/module/UserDetails/controller/user_details_controller.dart';

class UserDetailsView extends GetView<UserDetailsController> {
  UserDetailsView({super.key});

  final userDetails = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Text(
        'Name: ${userDetails['name']} \n'
        'Email: ${userDetails['email']} \n'
        'Address: ${userDetails['address']} \n'
        'City: ${userDetails['city']} \n'
        'Country: ${userDetails['country']} \n',
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
