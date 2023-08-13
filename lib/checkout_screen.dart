import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';


class checkout extends StatelessWidget {
  const checkout({Key? key, required this.massage}) : super(key: key);
final String massage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Center(child: Column(
        children: [
          Text('Checkout',style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            // Get.off(HomeScreen());
            Get.offAll(HomeScreen());
          }, child: Text('Home')),
          Text(massage),
        ],
      ),),
    );
  }
}
