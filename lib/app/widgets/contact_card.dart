import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testig_package/app/data/model/ContactModel.dart';
import 'package:testig_package/app/module/UserDetails/controller/user_details_controller.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final String email;
  final String address;
  final String city;
  final String country;

  const ContactCard({
    super.key,
    required this.name,
    required this.email,
    required this.address,
    required this.city,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/user_details', arguments: {
          'name': name,
          'email': email,
          'address': address,
          'city': city,
          'country': country,
        });
      },
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Text('A'),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: $name',
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'Email: $email',
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'Address: $address',
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                      style: const TextStyle(color: Colors.black),
                      'City: $city'),
                  Text(
                    'Country: $country',
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
