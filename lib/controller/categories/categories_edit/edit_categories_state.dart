part of 'edit_categories_cubit.dart';

// @immutable
abstract class EditCategoriesState {}

class EditCategoriesInitial extends EditCategoriesState {}

class EditingCategories extends EditCategoriesState {}

class EditedCategories extends EditCategoriesState {}

class EditCategoriesError extends EditCategoriesState {}
