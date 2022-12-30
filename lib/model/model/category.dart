// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Category {
  final int id;
  final IconData iconName;
  final String name;
  final int busyRoom;
  final int totalRoom; //space available for more of
  Category({
    required this.id,
    required this.iconName,
    required this.name,
    required this.busyRoom,
    required this.totalRoom,
  });

  Category copyWith({
    int? id,
    IconData? iconName,
    String? name,
    int? busyRoom,
    int? totalRoom,
  }) {
    return Category(
      id: id ?? this.id,
      iconName: iconName ?? this.iconName,
      name: name ?? this.name,
      busyRoom: busyRoom ?? this.busyRoom,
      totalRoom: totalRoom ?? this.totalRoom,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'iconName': iconName.codePoint,
      'name': name,
      'busyRoom': busyRoom,
      'totalRoom': totalRoom,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as int,
      iconName: IconData(map['iconName'] as int, fontFamily: 'MaterialIcons'),
      name: map['name'] as String,
      busyRoom: map['busyRoom'] as int,
      totalRoom: map['totalRoom'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Category(id: $id, iconName: $iconName, name: $name, busyRoom: $busyRoom, totalRoom: $totalRoom)';
  }

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.iconName == iconName &&
        other.name == name &&
        other.busyRoom == busyRoom &&
        other.totalRoom == totalRoom;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        iconName.hashCode ^
        name.hashCode ^
        busyRoom.hashCode ^
        totalRoom.hashCode;
  }
}




// //sample categories
// Category clothes = Category(
//     name: 'clothes', busyRoom: 10, totalRoom: 5, iconName: Icons.man_outlined);
// Category electronics = Category(
//     name: 'electronics',
//     busyRoom: 12,
//     totalRoom: 3,
//     iconName: Icons.devices_outlined);
// Category furniture = Category(
//     name: 'furniture',
//     busyRoom: 2,
//     totalRoom: 4,
//     iconName: Icons.chair_outlined);
// Category books = Category(
//     name: 'books',
//     busyRoom: 95,
//     totalRoom: 110,
//     iconName: Icons.menu_book_outlined);
// Category other = Category(
//     name: 'other',
//     busyRoom: 75,
//     totalRoom: 0,
//     iconName: Icons.card_giftcard_outlined);

// List<Category> categories = [clothes, electronics, furniture, books, other];
