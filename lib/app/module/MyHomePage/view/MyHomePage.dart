import 'package:get/get.dart';
import 'package:testig_package/app/widgets/contact_card.dart';
import '../controller/controller.dart';
import 'package:flutter/material.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                controller.contacts.value?.profiles?.clear();
                controller.fetchUser();
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.black,
              )),
        ],
      ),
      body: controller.isLoading.value == true
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  FutureBuilder(
                      future: controller.fetchUser(),
                      builder: (ctx, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.amber,
                              ),
                            ),
                          );
                        } else {
                          if (snapshot.hasError) {
                            return const Center(child: Text('Error'));
                          } else {
                            return Obx(
                              () => ListView.builder(
                                itemCount:
                                    controller.contacts.value?.profiles?.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (ctx, index) {
                                  return ContactCard(
                                    name: controller.contacts.value
                                            ?.profiles?[index].name ??
                                        '',
                                    email: controller.contacts.value
                                            ?.profiles?[index].email ??
                                        '',
                                    address: controller.contacts.value
                                            ?.profiles?[index].address ??
                                        '',
                                    city: controller.contacts.value
                                            ?.profiles?[index].city ??
                                        '',
                                    country: controller.contacts.value
                                            ?.profiles?[index].country ??
                                        '',
                                  );
                                },
                              ),
                            );
                          }
                        }
                      })
                ]),
              ),
            ),
    );
  }
}
