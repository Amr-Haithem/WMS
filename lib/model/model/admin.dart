import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Admin {
  final String id;
  final String name;
  final String email;
  final String address;
  final String phonenumber;
  // final List<String> screenPrevilages;
  Admin({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.phonenumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'address': address,
      'phonenumber': phonenumber,
    };
  }

  factory Admin.fromMap(Map<String, dynamic> map) {
    return Admin(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      address: map['address'] as String,
      phonenumber: map['phonenumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Admin.fromJson(String source) =>
      Admin.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Admin(id: $id, name: $name, email: $email, address: $address, phonenumber: $phonenumber)';
  }

  @override
  bool operator ==(covariant Admin other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.address == address &&
        other.phonenumber == phonenumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        address.hashCode ^
        phonenumber.hashCode;
  }
}
