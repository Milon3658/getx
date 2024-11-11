import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testig_package/app/data/constant/api.dart';
import 'package:testig_package/app/data/model/ProductModel.dart';

class HomeController extends GetxController {
  Rx<ProductModel?> products = Rx(null);

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  Future<ProductModel> fetchProduct() async {
    isLoading.value = true;
    final response = await http.get(Uri.parse(baseUrl));
    try {
      final data = ProductModel.fromJson(jsonDecode(response.body));
      products.value = data;
      if (kDebugMode) {
        print(data);
      }
      isLoading.value = false;
      return data;
    } catch (e, s) {
      log(e.toString());
      rethrow;
    }
  }
}
