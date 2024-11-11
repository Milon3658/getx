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
              onPressed: () {},
              icon: const Icon(
                Icons.refresh,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            FutureBuilder(
                future: controller.fetchUser(),
                builder: (ctx, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.amber,
                      ),
                    );
                  } else {
                    if (snapshot.hasError) {
                      return const Center(child: Text('Error'));
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data?.profiles?.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return ContactCard(
                            name: snapshot.data?.profiles?[index].name ?? '',
                            email: snapshot.data?.profiles?[index].email ?? '',
                            address:
                                snapshot.data?.profiles?[index].address ?? '',
                            city: snapshot.data?.profiles?[index].city ?? '',
                            country:
                                snapshot.data?.profiles?[index].country ?? '',
                          );
                        },
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
