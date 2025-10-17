import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 255, 0),
      appBar: AppBar(
        title: Text('HomeScreen'),
        elevation: 10.0,
        backgroundColor: const Color.fromARGB(255, 255, 7, 201),
        shadowColor: const Color.fromARGB(255, 191, 255, 0),
      ),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('aaaaaaaaaaaaaaaaaaaaaaaa'),
            SizedBox(height: 100),
            Text('AAAAAAAAAAAAAAAAAAAAAAAAA'),
          ],
        ),
      ),
    );
  }
}
