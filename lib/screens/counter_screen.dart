import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // The properties that are intended to hold a state should be declared outside the Widget build method.
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const customFont = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        foregroundColor: Colors.white,
        title: const Text(
          'Counter',
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
          setState(() {});
        },
        child: const Icon(Icons.plus_one_outlined),
      ),
    );
  }
}
