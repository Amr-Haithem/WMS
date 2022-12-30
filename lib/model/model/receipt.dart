// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'admin.dart';
import 'category.dart';
import 'donator.dart';

class Receipt {
  final String id;
  final Admin admin;
  final Donator donator;
  final DateTime donationDate;
  final List<Map<Category, int>> categoryNameWithItemSize;
  Receipt({
    required this.id,
    required this.admin,
    required this.categoryNameWithItemSize,
    required this.donator,
    required this.donationDate,
  });
}
