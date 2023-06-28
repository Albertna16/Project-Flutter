import 'dart:html';

import 'package:alquranapp/Models/home_controller.dart';
import 'package:alquranapp/Models/surah.dart';
import 'package:alquranapp/Screen/detail_surah_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB7C7D6),
      appBar: AppBar(
        backgroundColor: Color(0xFF193E46),
        title: Text("Surah dalam Al-Quran"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Surah>>(
        future: Get.put(HomeController()).getAllSurah(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text("Tidak ada data"),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              Surah surah = snapshot.data![index];
              return ListTile(
                onTap: () {
                  Get.to(DetailSurahPage());
                },
                leading: CircleAvatar(
                  backgroundColor: Color(0xFF5B775E),
                  child: Text("${surah.number}"),
                ),
                title: Text("${surah.name.transliteration.id}"),
                subtitle: Text(
                    "${surah.numberOfVerses} Ayat | ${surah.revelation.id}"),
                trailing: Text("${surah.name.short}"),
                contentPadding: EdgeInsets.all(10),
              );
            },
          );
        },
      ),
    );
  }
}
