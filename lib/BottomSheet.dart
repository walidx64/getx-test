import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Navigation1.dart';

Widget bottomSheet() {
  return Center(
    child: ElevatedButton(
      onPressed: () {
        Get.bottomSheet(
          Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.wb_sunny_outlined),
                title: const Text('Light Theme'),
                onTap: () => {
                  Get.changeTheme(
                    ThemeData.light(),
                  )
                },
              ),
              ListTile(
                leading: const Icon(Icons.wb_sunny),
                title: const Text('Dark Theme'),
                onTap: () => {
                  Get.changeTheme(
                    ThemeData.dark(),
                  )
                },
              )
            ],
          ),
          barrierColor: Colors.transparent,
          backgroundColor: Colors.brown,
        );
      },
      child: const Text('Bottom Sheet'),
    ),
  );
}
