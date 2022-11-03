import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increase() {
    count++;
    setState(() => {});
  }

  void decrease() {
    count--;
    setState(() => {});
  }

  void reset() {
    count = 0;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, decreaseFn: decrease, resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_sharp),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt_sharp),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.plus_one_sharp),
        ),
      ],
    );
  }
}
