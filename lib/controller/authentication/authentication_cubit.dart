import 'package:bloc/bloc.dart';
import 'package:storage_management_system/model/model/admin.dart';
import 'package:storage_management_system/model/model/donator.dart';
import 'package:uuid/uuid.dart';

import '../../model/firebase/authentication.dart';
import '../../model/repo/firestore_repo.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());
  final Authentication _authentication = Authentication();
  final FireStoreRepo _fireStoreRepo = FireStoreRepo();

  void registerDonatorWithEmailAndPassword(String name, String email,
      String address, String phoneNumber, String password) async {
    emit(Authenticating());

    try {
      await _authentication.registerDonatorWithEmailAndPassword(
          email, password);
      Donator donator = Donator(
          id: const Uuid().v1(),
          email: email,
          name: name,
          phoneNumber: phoneNumber,
          address: address,
          password: password,
          noOfPrevDonations: 0);
      await _fireStoreRepo.addNewDonatorToDB(donator);
      emit(Authenticated(admin: null, donator: donator, isAdmin: false));
    } catch (e) {
      print(e);
      emit(AuthenticationError());
    }
  }

  void signInDonatorWithEmailAndPassword(String email, String password) async {
    emit(Authenticating());

    try {
      await _authentication.signInWithEmailAndPassword(email, password);
      print("maaaaaaaaaa");
      Donator donator = await _fireStoreRepo.getDonatorFromDB(email);

      emit(Authenticated(admin: null, donator: donator, isAdmin: false));
    } catch (e) {
      print(e);
      emit(AuthenticationError());
    }
  }

  void signInAdminWithEmailAndPassword(String email, String password) async {
    emit(Authenticating());

    try {
      await _authentication.signInWithEmailAndPassword(email, password);
      Admin admin = await _fireStoreRepo.getAdminFromDB(email);

      emit(Authenticated(admin: admin, donator: null, isAdmin: true));
    } catch (e) {
      print(e);
      emit(AuthenticationError());
    }
  }
}
