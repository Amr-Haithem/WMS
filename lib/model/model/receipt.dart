// import 'donator.dart';

import 'category.dart';
import 'donator.dart';

class Receipt {
  final String id;
  final DateTime donationDate;
  final String address;
  final Donator donator;
  final List<Category> newCategoriesWithNewValues;
  Receipt({
    required this.id,
    required this.donationDate,
    required this.address,
    required this.donator,
    required this.newCategoriesWithNewValues,
  });

  Receipt copyWith({
    String? id,
    DateTime? donationDate,
    String? address,
    Donator? donator,
    List<Category>? newCategoriesWithNewValues,
  }) {
    return Receipt(
      id: id ?? this.id,
      donationDate: donationDate ?? this.donationDate,
      address: address ?? this.address,
      donator: donator ?? this.donator,
      newCategoriesWithNewValues:
          newCategoriesWithNewValues ?? this.newCategoriesWithNewValues,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'donationDate': donationDate.millisecondsSinceEpoch,
      'address': address,
      'donator': donator.toMap(),
      'newCategoriesWithNewValues':
          newCategoriesWithNewValues.map((x) => x.toMap()).toList(),
    };
  }
}
