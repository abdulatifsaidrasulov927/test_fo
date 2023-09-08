import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_fo/provider/counter/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Center(
            child: Text(
              'Counter Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                shadows: [
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Colors.black, // shadow color
                    offset: Offset(2.0, 2.0), // how much shadow will be shown
                  ),
                ],
              ),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${context.watch<CounterProvider>().value}'),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    context.read<CounterProvider>().increment();
                  },
                  child: const Icon(Icons.plus_one),
                ),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    context.read<CounterProvider>().decrement();
                  },
                  child: const Icon(Icons.exposure_minus_1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
