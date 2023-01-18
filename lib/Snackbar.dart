import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Navigation1.dart';

Widget snackBar() {
  return Center(
    child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Get.snackbar(
              'Snackbar Title',
              'Snack BAR pressed',
              snackPosition: SnackPosition.BOTTOM,
              //backgroundColor: Colors.blue[100],
              //animationDuration: Duration(microseconds: 3000),
              backgroundGradient: LinearGradient(colors: [
                Colors.purple[200]!,
                Colors.blue[100]!,
              ]),
              isDismissible: true,
              // boxShadows: [BoxShadow()],
            );
          },
          child: const Text('Snackbar'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.to(TestScreenGetx());
          },
          child: const Text('Next Screen'),
        ),
      ],
    ),
  );
}
