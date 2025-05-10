import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider_class.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("called");
    final Counter = Provider.of<CounterProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("CounterScreen"),
      ),
      backgroundColor: Colors.deepOrange,
      body: Column(
        children: [
          Center(child:
              Consumer<CounterProvider>(builder: (context, value, child) {
            return Text(
              value.num.toString(),
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Counter.increament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
