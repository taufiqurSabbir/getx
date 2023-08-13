import 'package:flutter/material.dart';
import 'package:get/get.dart';
class carts extends StatelessWidget {
  const carts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('carts'),
      ),
      body: Center(child: Column(
        children: [
          Text('carts',style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text('Back to home with getx'))
        ],
      ),),
    );
  }
}
