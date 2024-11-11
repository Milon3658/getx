import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testig_package/app/data/constant/api.dart';
import 'package:testig_package/app/data/model/ContactModel.dart';

class HomeController extends GetxController {
  Rx<ContactModel?> contacts = Rx(null);
  RxBool isLoading = false.obs;
  Future<ContactModel> fetchUser() async {
    isLoading.value = true;
    final response = await http.get(Uri.parse(baseUrl));
    try {
      final data = ContactModel.fromJson(jsonDecode(response.body));
      contacts.value = data;
      isLoading.value = false;
      return data;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
