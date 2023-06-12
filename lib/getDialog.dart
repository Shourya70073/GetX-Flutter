import 'package:flutter/material.dart';
import 'package:get/get.dart';

class getDialog extends StatelessWidget {
  const getDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
              title: "Delete Chat",
              titlePadding: EdgeInsets.all(20),
              middleText: "Are you sure you want to Delete the chat",
              textConfirm: "Yes",
              cancel: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Text("Cancel"),
              ),
              onCancel: () {
                Get.back();
              },
              onConfirm: () {
                Get.back();
              });
        },
      ),
    );
  }
}
