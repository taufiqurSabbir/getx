import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
   CounterScreen({Key? key}) : super(key: key);

  final Countcontrol counter = Get.put(Countcontrol());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: GetBuilder<Countcontrol>(builder: (controller) {
            return Text(
              counter.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Countcontrol extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
}
