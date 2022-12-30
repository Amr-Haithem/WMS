import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:storage_management_system/model/repo/firestore_repo.dart';

part 'edit_categories_state.dart';

class EditCategoriesCubit extends Cubit<EditCategoriesState> {
  EditCategoriesCubit() : super(EditCategoriesInitial());
  FireStoreRepo fireStoreRepo = FireStoreRepo();
  void setNewCategoryValues(int id, int newBusyRoom, int newTotalRoom) async {
    emit(EditingCategories());
    try {
      await fireStoreRepo.setNewCategoryValues(id, newBusyRoom, newTotalRoom);
      emit(EditedCategories());
    } catch (e) {
      emit(EditCategoriesError());
    }
  }
}
