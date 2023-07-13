import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inventoryapp/models/inventory.dart';
import 'package:inventoryapp/provider/firestore_service.dart';
import 'package:inventoryapp/view/detail_barang.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text("Inventory App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return DetailBarang();
            },
          ));
        },
        backgroundColor: Colors.lightGreen,
        child: const Icon(Icons.add),
      ),
      // StreamBuilder digunakan untuk membaca aliran data di dalam database, jadi akan membaca setiap perubahan data
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        // stream itu sumber data yang kita ambil
        stream:
            //snapshot() dibawah ini itu bentuknya aliran data, dan merupakan tipedata yang dikembalikan FIrestore ke dalam flutternya
            FirebaseFirestore.instance.collection('inventories').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // inventories tersebut sudah menjadi list dan nantinya akan lebih mudah mengaksesnya
            var inventories = snapshot.data!.docs
                .map((inventory) => Inventory.fromSnapshot(inventory))
                .toList();

            return ListView.builder(
              itemCount: inventories.length,
              itemBuilder: (BuildContext context, int index) {
                var id = snapshot.data!.docs[index].id;

                Future<void> _deleteInventory(BuildContext context) async {
                  await FirestoreService.deleteInventory(id);
                  Fluttertoast.showToast(
                    msg: "Data berhasil dihapus dari Database",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 3,
                    backgroundColor: Colors.grey[700],
                    textColor: Colors.white,
                  );
                }

                return ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailBarang();
                      },
                    ));
                  },
                  title: Text(inventories[index].name),
                  subtitle: Text(inventories[index].desc),
                  trailing: IconButton(
                    onPressed: () {
                      FirestoreService.deleteInventory(id);
                      _deleteInventory(context);
                    },
                    icon: Icon(
                      Icons.delete_forever,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

// Column(
//         children: [
//           ListTile(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) {
//                   return DetailBarang();
//                 },
//               ));
//             },
//             title: const Text("Barang 1"),
//             subtitle: const Text("Deskripsi barang 1"),
//           ),
//         ],
//       ),
