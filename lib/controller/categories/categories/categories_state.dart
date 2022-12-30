// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'categories_cubit.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<Category> categories;
  CategoriesLoaded({
    required this.categories,
  });
}

class CategoriesError extends CategoriesState {}
