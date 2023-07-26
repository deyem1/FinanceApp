import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AI Based Planning'),
          backgroundColor: Colors.red,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(children: [
            // SizedBox(height: 50.0),
            // Text(
            //   'Coming Soon!',
            //   style: TextStyle(
            //     fontSize: 32,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(height: 90.0),
            Image(image: AssetImage('images/rai2.gif')),
            SizedBox(height: 50.0),
            Text(
              'Kindly check back soon while we perfect your AI tool!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ]),
        ));
  }
}
