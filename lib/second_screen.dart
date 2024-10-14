import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_package_example/main_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  final MainController _mainController = Get.find /* <MainController> */ ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                _mainController.counter.value.toString(),
              ),
            ),
            ElevatedButton(
                onPressed: () => _mainController.incrementCounter(),
                child: const Text('Increase'))
          ],
        ),
      ),
    );
  }
}
