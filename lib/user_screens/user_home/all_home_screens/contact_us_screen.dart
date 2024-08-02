import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Contact Us",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: const Color.fromRGBO(31, 79, 143, 1.0),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(style: TextStyle(fontSize: 16),'We are here to assist you with any issues or inquiries. Please reach out to us through any of the following methods\nEmail:•	saleemork1@gmail.com\nPhone: Technical Support: +92-3341965302\nOffice Address: PESCO Hangu Office, Hangu, Khyber Pakhtunkhwa, Pakistan\nWorking Hours: \n•	Monday to Friday: 9:00 AM - 5:00 PM\n•	Saturday: 9:00 AM - 1:00 PM\n•	Sunday: Closed\nFeel free to contact us for any assistance or feedback. Your satisfaction is our priority.'),
        ),
      ),
    );
  }
}
