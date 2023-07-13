import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inventoryapp/models/inventory.dart';

class FirestoreService{
  // kenapa kita buat static? jadi static ini fungsinya ketika kita membuat suatu function kemudian kita buat sebagai static jadi kita bisa memanggil function tanpa membuat object
  static Future<void> addInventory(Inventory inventory) async {
    // perlu memanggil FirebaseFirestore.instance untuk menspesifikan tabel mana yang harus kita masukkan ke dalam tabel yang mana
    await FirebaseFirestore.instance.collection('inventories').add(inventory.toJson());
  }

  static Future<void> deleteInventory(String id) async {
    await FirebaseFirestore.instance.collection('inventories').doc(id).delete();
  }
}