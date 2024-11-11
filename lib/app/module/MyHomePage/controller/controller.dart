import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testig_package/app/data/constant/api.dart';
import 'package:testig_package/app/data/model/ContactModel.dart';

class HomeController extends GetxController {
  Rx<ContactModel?> contacts = Rx(null);

  Future<ContactModel> fetchUser() async {
    final response = await http.get(Uri.parse(baseUrl));
    try {
      final data = ContactModel.fromJson(jsonDecode(response.body));
      contacts.value = data;
      return data;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
