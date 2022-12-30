import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Donator {
  final String id;
  final String email;
  final String name;
  final String phoneNumber;
  final String address;
  final String password;
  final int noOfPrevDonations;
  Donator({
    required this.id,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.password,
    required this.noOfPrevDonations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'password': password,
      'noOfPrevDonations': noOfPrevDonations,
    };
  }

  factory Donator.fromMap(Map<String, dynamic> map) {
    return Donator(
      id: map['id'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      address: map['address'] as String,
      password: map['password'] as String,
      noOfPrevDonations: map['noOfPrevDonations'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Donator.fromJson(String source) =>
      Donator.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Donator(id: $id, email: $email, name: $name, phoneNumber: $phoneNumber, address: $address, password: $password, noOfPrevDonations: $noOfPrevDonations)';
  }

  @override
  bool operator ==(covariant Donator other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.email == email &&
        other.name == name &&
        other.phoneNumber == phoneNumber &&
        other.address == address &&
        other.password == password &&
        other.noOfPrevDonations == noOfPrevDonations;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        name.hashCode ^
        phoneNumber.hashCode ^
        address.hashCode ^
        password.hashCode ^
        noOfPrevDonations.hashCode;
  }
}
