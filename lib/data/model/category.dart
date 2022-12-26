import 'package:flutter/material.dart';

class DonatedItemCategory{
  int numAvailable;
  int emptyRoomFor; //space available for more of
  String? name;
  IconData iconName;
  DonatedItemCategory({
    required this.numAvailable,
    this.name,
    required this.emptyRoomFor,
    required this.iconName,
});
}





//sample categories
DonatedItemCategory clothes     = DonatedItemCategory(name: 'clothes',     numAvailable: 10, emptyRoomFor: 5,   iconName: Icons.man_outlined);
DonatedItemCategory electronics = DonatedItemCategory(name: 'electronics', numAvailable: 12, emptyRoomFor: 3,   iconName: Icons.devices_outlined);
DonatedItemCategory furniture   = DonatedItemCategory(name: 'furniture',   numAvailable: 2,  emptyRoomFor: 4,   iconName: Icons.chair_outlined);
DonatedItemCategory books       = DonatedItemCategory(name: 'books',       numAvailable: 95, emptyRoomFor: 110, iconName: Icons.menu_book_outlined);
DonatedItemCategory other       = DonatedItemCategory(name: 'other',       numAvailable: 75, emptyRoomFor: 0,   iconName: Icons.card_giftcard_outlined );


List <DonatedItemCategory> categories = [clothes, electronics, furniture, books, other];
