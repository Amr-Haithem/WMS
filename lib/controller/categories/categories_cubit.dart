import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:storage_management_system/model/model/category.dart';
import 'package:storage_management_system/model/repo/firestore_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());
  FireStoreRepo fireStoreRepo = FireStoreRepo();
  void getCategoriesFromDB() async {
    emit(CategoriesLoading());
    try {
      List<Category> categories = await fireStoreRepo.getCategoriesFromDB();
      emit(CategoriesLoaded(categories: categories));
    } catch (e) {
      emit(CategoriesError());
    }
  }
}
