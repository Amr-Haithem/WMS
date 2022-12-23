import 'package:storage_management_system/data/model/storage_center.dart';
import 'package:storage_management_system/data/model/user.dart';
import 'category.dart';

class Employee extends User {
String? name;
String? id;
double rank;
String profilePicUrl;
StorageCenter? assignedStorageCenter;
List <DonatedItemCategory>? assignedCategories;

Employee(
    {
  this.name,
  this.id,
  required this.rank,
  required this.profilePicUrl,
  this.assignedCategories,
  this.assignedStorageCenter

  }
);

}



//sample employees
Employee sampleEmployee1= Employee(name: 'Mohamed Mahmoud', id: '19P7975', assignedStorageCenter: nasrCity,   rank:4.7,  assignedCategories: [clothes,furniture,electronics, other,books ], profilePicUrl: "assets/images/Mohamed2.png");
Employee sampleEmployee2= Employee(name: 'Amr Haithem',     id: '19P1234', assignedStorageCenter: maadi,      rank:4,    assignedCategories: [clothes,furniture],             profilePicUrl: "assets/images/Amr.png" );
Employee sampleEmployee3= Employee(name: 'Adham',           id: '19P5678', assignedStorageCenter: giza,       rank:5,    assignedCategories: [books,furniture,other],         profilePicUrl: "assets/images/Adham.png" );
Employee sampleEmployee4= Employee(name: 'Abdelraouf',      id: '19P4321', assignedStorageCenter: mohandseen, rank:3,    assignedCategories: [clothes,electronics,] ,         profilePicUrl: "assets/images/Abdelraouf.png" );
Employee sampleEmployee5= Employee(name: 'Osama Ayman',     id: '19P4321', assignedStorageCenter: mohandseen, rank:3,    assignedCategories: [clothes,electronics,] ,         profilePicUrl: "assets/images/Osama.png" );

List <Employee> employees = [sampleEmployee1, sampleEmployee2, sampleEmployee3, sampleEmployee4, sampleEmployee5 ];


