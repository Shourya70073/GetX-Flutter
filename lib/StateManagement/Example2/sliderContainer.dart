// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/StateManagement/Counter/counterController.dart';
import 'package:getxx/StateManagement/Example2/slideController.dart';

class slide extends StatefulWidget {
  slide({super.key});

  @override
  State<slide> createState() => _slideState();
}

class _slideState extends State<slide> {
  // ignore: prefer_final_fields
  slideController _controller = Get.put(slideController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Obx(
            ()=> Container(
              height: 100,
              width: 100,
              color: Colors.red.withOpacity(_controller.opacity.value),
            ),
          ),
          Obx(
            ()=> Slider(
                value: _controller.opacity.value,
                onChanged: (value) {
                  _controller.updateOpacity(value);
                }),
          )
        ],
      )),
    );
  }
}
