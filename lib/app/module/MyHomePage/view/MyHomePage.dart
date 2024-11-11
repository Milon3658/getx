import 'package:get/get.dart';
import '../controller/controller.dart';
import 'package:flutter/material.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Shopping',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: controller.isLoading.value == true
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  const Text(
                    'All products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  FutureBuilder(
                      future: controller.fetchProduct(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            primary: false,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemBuilder: (context, index) {
                              return Obx(() => Container(
                                    margin: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Image(
                                            image: NetworkImage(
                                                controller
                                                        .products
                                                        .value
                                                        ?.products?[index]
                                                        .images
                                                        .toString() ??
                                                    '',
                                                scale: 0.5)),
                                        Text(controller.products.value
                                                ?.products?[index].title ??
                                            ''),
                                        Text(controller.products.value
                                                ?.products?[index].price
                                                .toString() ??
                                            ''),
                                      ],
                                    ),
                                  ));
                            },
                            itemCount:
                                controller.products.value?.products?.length ??
                                    0,
                          );
                        }
                      })
                ]),
              ),
            ),
    );
  }
}
