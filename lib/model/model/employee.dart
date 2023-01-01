import 'category.dart';

class Employee {
  String name;
  String id;
  double rank;
  String profilePicUrl;

  Employee({
    required this.name,
    required this.id,
    required this.rank,
    required this.profilePicUrl,
  });
}

//sample employees
Employee sampleEmployee1 = Employee(
    name: 'Mohamed Mahmoud',
    id: '19P7975',
    rank: 4.7,
    profilePicUrl: "assets/images/Mohamed2.png");
Employee sampleEmployee2 = Employee(
    name: 'Amr Haithem',
    id: '19P1234',
    rank: 4,
    profilePicUrl: "assets/images/Amr.png");
Employee sampleEmployee3 = Employee(
    name: 'Adham',
    id: '19P5678',
    rank: 5,
    profilePicUrl: "assets/images/Adham.png");
Employee sampleEmployee4 = Employee(
    name: 'Abdelraouf',
    id: '19P4321',
    rank: 3,
    profilePicUrl: "assets/images/Abdelraouf.png");
Employee sampleEmployee5 = Employee(
    name: 'Osama Ayman',
    id: '19P4321',
    rank: 3,
    profilePicUrl: "assets/images/Osama.png");

List<Employee> employees = [
  sampleEmployee1,
  sampleEmployee2,
  sampleEmployee3,
  sampleEmployee4,
  sampleEmployee5
];
