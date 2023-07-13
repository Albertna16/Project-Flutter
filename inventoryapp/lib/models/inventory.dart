import 'package:cloud_firestore/cloud_firestore.dart';

class Inventory {
  String name;
  String desc;

  // constructor
  Inventory({
    required this.name,
    required this.desc,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'desc': desc,
    };
  }

  factory Inventory.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> json) {
    return Inventory(name: json['name'], desc: json['desc']);
  }
}
