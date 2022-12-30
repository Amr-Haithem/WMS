import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:storage_management_system/model/model/admin.dart';
import 'package:storage_management_system/model/model/category.dart';

import '../firebase/firestore.dart';
import '../model/donator.dart';

class FireStoreRepo {
  final FireStore fireStore = FireStore();
  //todo until we get a donator
  Future<Donator> getDonatorFromDB(String email) async {
    late Donator donator;
    QuerySnapshot<Map<String, dynamic>> tempVar =
        await fireStore.getDonatorFromDB(email);
    for (var doc in tempVar.docs) {
      donator = Donator.fromMap(doc.data());
    }
    return donator;
  }

  Future<Admin> getAdminFromDB(String email) async {
    late Admin admin;
    QuerySnapshot<Map<String, dynamic>> tempVar =
        await fireStore.getAdminFromDB(email);
    for (var doc in tempVar.docs) {
      admin = Admin.fromMap(doc.data());
    }
    return admin;
  }

  Future<void> addNewDonatorToDB(Donator donator) {
    return fireStore.addNewDonatorToDB(donator);
  }

  Future<List<Category>> getCategoriesFromDB() async {
    List<Category> categories = [];
    QuerySnapshot<Map<String, dynamic>> tempVar =
        await fireStore.getCategoriesFromDB();
    for (var doc in tempVar.docs) {
      categories.add(Category.fromMap(doc.data()));
    }
    return categories;
  }

  Future<void> setNewCategoryValues(int id, int newBusyRoom, int newTotalRoom) {
    return fireStore.setNewCategoryValues(id, newBusyRoom, newTotalRoom);
  }
}
