import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const customFont = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        foregroundColor: Colors.white,
        title: const Text(
          'Home',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Clicks',
              style: customFont,
            ),
            Text(
              '$counter',
              style: customFont,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        onPressed: () {
          counter++;
        },
        child: const Icon(Icons.plus_one_outlined),
      ),
    );
  }
}
