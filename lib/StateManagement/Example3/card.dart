// ignore_for_file: prefer_const_constructors, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getxx/StateManagement/Example3/cardController.dart';

class CardWidget extends StatelessWidget {
  final cardController _controller = Get.put(cardController());

  CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_controller.name.value[index]),
                          Checkbox(
                            value: _controller.checkbox.value[index],
                            onChanged: (value) {
                              _controller.updateCheckBox(index, value ?? false);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
