import 'package:bloc/bloc.dart';
import 'package:storage_management_system/model/model/receipt.dart';
import 'package:storage_management_system/model/repo/firestore_repo.dart';

part 'donation_state.dart';

class DonationCubit extends Cubit<DonationState> {
  DonationCubit() : super(DonationInitial());

  FireStoreRepo fireStoreRepo = FireStoreRepo();
  void addNewDonationToDB(Receipt receipt) async {
    emit(DonationLoading());
    print(receipt.newCategoriesWithNewValues);

    try {
      // await fireStoreRepo.addNewDonationToDB(receipt);
      // print(receipt.newCategoriesWithNewValues);
      for (var category in receipt.newCategoriesWithNewValues) {
        await fireStoreRepo.setNewCategoryValues(
            category.id, category.busyRoom, category.totalRoom);
      }
      emit(DonationAdded());
    } catch (e) {
      emit(DonationError());
    }
  }
}
