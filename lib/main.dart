import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Counter()));
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++;
          });
        },
        child: Icon(Icons.add_circle),
      ),
      body: Container(
        width: double.infinity,
        decoration:
            BoxDecoration(color: const Color.fromARGB(255, 173, 175, 179)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Press The Bottom Button To Increase A Value",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 197, 5)),
            ),
            Text(
              "Value: $value",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 47, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
