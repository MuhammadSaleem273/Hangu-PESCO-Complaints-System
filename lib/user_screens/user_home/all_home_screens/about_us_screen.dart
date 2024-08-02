import 'package:flutter/material.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "About Us",
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
        child: Text(style: TextStyle(fontSize: 16),'Welcome to the PESCO Hangu Complaint Management System! Our app simplifies managing electricity-related concerns for Hangu residents. No more physical visits to the PESCO office—easily register complaints or request new connections from your phone.Your submissions are instantly sent to the relevant department, ensuring quick and efficient resolution. Our dedicated team monitors each request, aiming to provide prompt and effective service.Thank you for using our app. We are committed to making your experience with PESCO hassle-free and efficient. '),
      ));
  }
}
