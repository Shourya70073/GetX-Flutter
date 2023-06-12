import 'package:flutter/material.dart';
import 'package:get/get.dart';

class snackBar extends StatelessWidget {
  const snackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Error",
            "Error Here",
            duration: Duration(seconds: 1),
          );
        },
      ),
    );
  }
}
