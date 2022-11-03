import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);
    int count = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('my app'),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Números de Clicks',
              style: textStyle,
            ),
            Text('$count', style: textStyle),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => {count++},
        child: const Icon(Icons.plus_one_sharp),
      ),
    );
  }
}
