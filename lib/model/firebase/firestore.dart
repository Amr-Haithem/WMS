import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:storage_management_system/model/model/receipt.dart';

import '../model/donator.dart';

class FireStore {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  Future<void> addNewDonatorToDB(Donator donator) {
    return firestore.collection("donators").add(donator.toMap());
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getDonatorFromDB(String email) {
    return firestore
        .collection("donators")
        .where("email", isEqualTo: email)
        .get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAdminFromDB(String email) {
    return firestore
        .collection("admins")
        .where("email", isEqualTo: email)
        .get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getCategoriesFromDB() {
    return firestore.collection("Categories").get();
  }

  Future<void >setNewCategoryValues(int id, int newBusyRoom, int newTotalRoom) {
    return firestore
        .collection("Categories")
        .doc(id.toString())
        .update({"busyRoom": newBusyRoom, "totalRoom": newTotalRoom});
  }
  
  Future<void> addNewDonationToDB(Receipt receipt) {
    return firestore.collection("receipts").add(receipt.toMap());
  }
}
