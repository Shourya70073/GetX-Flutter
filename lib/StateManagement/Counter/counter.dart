// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/StateManagement/Counter/counterController.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  CounterController _controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          _controller.increment();
        }),
        appBar: AppBar(),
        body: Center(
          child: Obx(
            (() => Text(
                  _controller.x.value.toString(),
                )),
          ),
        ));
  }
}
