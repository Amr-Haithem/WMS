class Receipt {
  String? id;
  DateTime? donationDate;
  List <String>? donatedItemsIDs;
  String? storageID;

  Receipt({
    this.id,
    this.donationDate,
    this.donatedItemsIDs,
    this.storageID,
  });
}