import 'package:get/get.dart';
import 'dart:async';

class Controller extends GetxController {
  List<String> images = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpeg',
    'assets/images/image_3.jpeg',
    'assets/images/image_4.jpeg',
    'assets/images/image_5.jpeg',
    'assets/images/image_6.jpeg',
    'assets/images/image_7.jpeg',
    'assets/images/image_8.jpeg',
    'assets/images/image_9.jpeg',
    'assets/images/image_10.jpeg',
    'assets/images/image_11.jpeg',
    'assets/images/image_12.jpeg',
    'assets/images/image_13.jpeg',
    'assets/images/image_14.jpeg',
    'assets/images/image_15.jpeg',
    'assets/images/image_16.jpeg',
  ];

  final DateTime startDate = DateTime(2024, 3, 1, 12, 0, 0);
  var years = 0.obs;
  var days = 0.obs;
  var hours = 0.obs;
  var minutes = 0.obs;
  var seconds = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _updateTime();
    Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    final difference = now.difference(startDate);

    years.value = (difference.inDays / 365).floor();
    days.value = difference.inDays % 365;
    hours.value = difference.inHours % 24;
    minutes.value = difference.inMinutes % 60;
    seconds.value = difference.inSeconds % 60;
  }
}
