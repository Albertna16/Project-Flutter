import 'package:alquranapp/Models/home_controller.dart';
import 'package:alquranapp/Models/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailSurahPage extends GetView<DetailSurahController> {
  final Surah surah = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surah ${surah.name.transliteration.id}"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Halooo"),
      ),
    );
  }
}
