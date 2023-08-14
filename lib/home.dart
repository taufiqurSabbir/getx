import 'package:flutter/material.dart';
import 'package:getx/carts_screen.dart';
import 'package:getx/checkout_screen.dart';
import 'package:get/get.dart';
import 'package:getx/counterScreen.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  final Countcontrol counter = Get.put(Countcontrol());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('home',style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            //get navigation
           Get.to(carts());
          }, child: const Text('Carts')),
          ElevatedButton(onPressed: (){
            //get navigation
           Get.off(checkout(massage: 'hello from home',));
          }, child: const Text('Checkout')),
          
          ElevatedButton(onPressed: (){
            counter.increment();
            Get.to(CounterScreen());
          }, child: Text('Counter Screen'))
        ],
      ),),
    );
  }
}
