// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                  leading: Icon(
                    Icons.light,
                  ),
                  title: Text("Set the Light Theme"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.dark_mode,
                  ),
                  title: Text("Set the Dark Theme"),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
