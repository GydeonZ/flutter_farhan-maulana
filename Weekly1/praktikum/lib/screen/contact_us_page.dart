import 'package:flutter/material.dart';

Widget contactUsPage(BuildContext context) {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Contact Us',
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 20),
      Text(
        'We are here for you!',
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      SizedBox(height: 20),
      Text(
        'Get in touch with us for any\nquestions or concerns.',
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    ],
  );
}
