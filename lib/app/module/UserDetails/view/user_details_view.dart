import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailsView extends GetView {
  const UserDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: const Center(
        child: Text('User Details'),
      ),
    );
  }
}
