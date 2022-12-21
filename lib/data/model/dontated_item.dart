import 'category.dart';

class DonatedItem{
  String? id;
  DonatedItemCategory? category;
  String? donatorID;
  DateTime? donationDate;
  String? itemSize;   //item size in meter squared

  DonatedItem({
    this.id,
    this.category,
    this.donatorID,
    this.donationDate,
    this.itemSize
});

}