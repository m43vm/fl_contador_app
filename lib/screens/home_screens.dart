import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 194, 140),
      appBar: AppBar(title: Text('HomeScreen'), elevation: 10.0),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('aaaaaaaaaaaaaaaaaaaaaaaa'),
            Text('AAAAAAAAAAAAAAAAAAAAAAAAA'),
          ],
        ),
      ),
    );
  }
}
