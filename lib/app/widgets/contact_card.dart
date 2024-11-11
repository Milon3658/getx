import 'package:flutter/material.dart';

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
    return Card(
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
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    'Name: $name'),
                Text(
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    'Email: $email'),
                Text(
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    'Address: $address'),
                Text(
                    style: const TextStyle(color: Colors.black), 'City: $city'),
                Text(
                    style: const TextStyle(
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                    'Country: $country'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
