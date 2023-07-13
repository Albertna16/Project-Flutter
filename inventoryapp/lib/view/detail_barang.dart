import 'package:flutter/material.dart';
import 'package:inventoryapp/models/inventory.dart';
import 'package:inventoryapp/provider/firestore_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:inventoryapp/view/home_page.dart';

class DetailBarang extends StatefulWidget {
  DetailBarang({Key? key}) : super(key: key);

  @override
  State<DetailBarang> createState() => _DetailBarangState();
}

class _DetailBarangState extends State<DetailBarang> {
  late TextEditingController nameController;
  late TextEditingController deskripsiController;

  @override
  void initState() {
    nameController = TextEditingController();
    deskripsiController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    deskripsiController.dispose();
    super.dispose();
  }

  Future<void> _addInventory(BuildContext context) async {
    await FirestoreService.addInventory(
      Inventory(name: nameController.text, desc: deskripsiController.text),
    );
    Fluttertoast.showToast(
      msg: "Data berhasil ditambahkan ke Database",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.grey[700],
      textColor: Colors.white,
    );
    Navigator.pop(context); // Kembali ke halaman Homepage
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
        actions: [
          IconButton(
            onPressed: () {
              _addInventory(context);
            },
            icon: const Icon(Icons.check),
          ),
        ],
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Masukkan nama barang",
                labelText: "Nama barang",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: deskripsiController,
              decoration: const InputDecoration(
                hintText: "Masukkan deskripsi barang",
                labelText: "Deskripsi barang",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
