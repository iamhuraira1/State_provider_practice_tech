import 'package:flutter/material.dart';
import 'package:flutter_application_1/slider_class.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("called");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("SliderScreen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderClass>(builder: (context, value, child) {
            return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.deepOrange.withOpacity(value.range)),
            );
          }),
          Consumer<SliderClass>(builder: (context, value, child) {
            return Slider(
                value: value.range,
                onChanged: (e) {
                  value.opacity(e);
                });
          })
        ],
      ),
    );
  }
}
