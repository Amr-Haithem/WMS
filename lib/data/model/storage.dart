class Storage {
  String? id;
  String? email;
  String? name;
  String? phoneNumber;
  String? address;
  String? adminID;
  List<String>? employeesIDs;
  int? capacity;  //storage capacity in meter squared

  Storage({
    this.id,
    this.email,
    this.name,
    this.phoneNumber,
    this.address,
    this.adminID,
    this.employeesIDs,
    this.capacity,
  });

}