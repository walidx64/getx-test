import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreenGetx extends StatelessWidget {
  const TestScreenGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.mordeo.org/files/uploads/2020/05/Sci-Fi-Cyberpunk-City-4K-Ultra-HD-Mobile-Wallpaper-950x1689.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_sharp),
                label: const Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
