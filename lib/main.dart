import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BottomSheet.dart';
import 'Snackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              icon: const Icon(Icons.sunny),
            ),
            IconButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              icon: const Icon(Icons.nightlight),
            )
          ],
          title: const Center(
            child: Text('GetX'),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "http://m.gettywallpapers.com/wp-content/uploads/2020/01/Minimalist-Wallpaper-For-iPhone-473x1024.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              snackBar(),
              bottomSheet(),
            ],
          ),
        ),
      ),
    );
  }
}
