import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getxx/GetXofTypeController/controller.dart';

class counter extends StatelessWidget {
  const counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetX<MyController>(
              init: MyController(),
              builder: (controller) {
                return Text(controller.count.value.toString());
              }),
          GestureDetector(
            onTap: () {
              Get.find<MyController>().increment();
            },
            child: Text("Increment"),
          )
        ],
      ),
    );
  }
}
