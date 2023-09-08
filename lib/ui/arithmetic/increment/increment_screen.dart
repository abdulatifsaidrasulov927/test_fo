import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_fo/provider/arithmetic/increment/increment_providrer.dart';

class IncrementScreen extends StatelessWidget {
  const IncrementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Center(
            child: Text(
              'Increment Screen',
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: Offset(
                        7.0, // Move to right 7.0 horizontally
                        8.0, // Move to bottom 8.0 Vertically
                      ))
                ],
              ),
              child: Center(
                  child: Text(
                '${context.watch<IncrementProvider>().result}',
                style: const TextStyle(color: Colors.black, fontSize: 40),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: context.read<IncrementProvider>().intputOne,
              decoration: const InputDecoration(
                focusColor: Colors.black,
                label: Text('Number 1'),
                fillColor: Colors.amber,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(23),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  // BoxShadow(
                  //   color: Colors.black,
                  //   blurRadius: 3,
                  //   offset: Offset(3, 3),
                  // ),
                ],
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TextField(
                style: TextStyle(color: Colors.green),
                keyboardType: TextInputType.number,
                controller: context.read<IncrementProvider>().intputTwo,
                decoration: const InputDecoration(
                  label: Text(
                    'Number 2',
                    style: TextStyle(color: Colors.green),
                  ),
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(23),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.green,
                  shadowColor: Colors.black,
                ),
                onPressed: () {
                  context.read<IncrementProvider>().increment();
                },
                child: const Text('Increment')),
          )
        ],
      ),
    );
  }
}
