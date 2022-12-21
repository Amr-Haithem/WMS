import 'package:storage_management_system/data/model/storage_center.dart';
import 'package:storage_management_system/data/model/user.dart';
import 'category.dart';

class Employee extends User {
String? name;
String? id;
int? rank;
StorageCenter? assignedStorageCenter;
List <DonatedItemCategory>? assignedCategories;

Employee(
    {
  this.name,
  this.id,
  this.rank,
  this.assignedCategories,
  this.assignedStorageCenter

  }
);

}



//sample employees
Employee sampleEmployee1= Employee(name: 'Mohamed Mahmoud', id: '19P7975', assignedStorageCenter: nasrCity,   rank:5,  assignedCategories: [clothes,furniture,electronics]);
Employee sampleEmployee2= Employee(name: 'Amr',     id: '19P1234', assignedStorageCenter: maadi,      rank:4,  assignedCategories: [clothes,furniture] );
Employee sampleEmployee3= Employee(name: 'Adham',   id: '19P5678', assignedStorageCenter: giza,       rank:5,  assignedCategories: [books,furniture,other] );
Employee sampleEmployee4= Employee(name: 'Mohamed', id: '19P4321', assignedStorageCenter: mohandseen, rank:3,  assignedCategories: [clothes,electronics,] );

List <Employee> employees = [sampleEmployee1, sampleEmployee2, sampleEmployee3, sampleEmployee4 ];



// //sample employees
// Employee employee1= Employee(name: 'Mohamed', id: '19P7975', assignedBranch: nasrCity,     assignedCategories: [employee1.assignedBranch?.categories?[0],employee1.assignedBranch?.categories?[1], employee1.assignedBranch?.categories?[2], employee1.assignedBranch?.categories?[3]]);
// Employee employee2= Employee(name: 'Amr',     id: '19P1234', assignedBranch: maadi,        assignedCategories: [employee2.assignedBranch?.categories?[0],employee2.assignedBranch?.categories?[1], employee2.assignedBranch?.categories?[2], employee2.assignedBranch?.categories?[3]]);
// Employee employee3= Employee(name: 'Adham',   id: '19P5678', assignedBranch: giza,         assignedCategories: [employee2.assignedBranch?.categories?[0],employee2.assignedBranch?.categories?[1], employee2.assignedBranch?.categories?[2], employee3.assignedBranch?.categories?[3]]);
// Employee employee4= Employee(name: 'Mohamed', id: '19P4321', assignedBranch: mohandseen,   assignedCategories: [employee2.assignedBranch?.categories?[0],employee2.assignedBranch?.categories?[1], employee2.assignedBranch?.categories?[2], employee4.assignedBranch?.categories?[3]]);
//