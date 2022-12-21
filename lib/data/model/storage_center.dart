import 'category.dart' ;

class StorageCenter{
  String? name;
  String? address;
  String? phoneNumber;
  String? email;
  String? id;
  String? adminID;
  List <Category>? categories;
  List<String>? employeesIDs;
  int? capacity;  //storage

  StorageCenter(
      {
    this.name,
    this.id,
    this.address,
    this.adminID,
    this.categories,
    this.capacity,
    this.phoneNumber,
    this.email,
    this.employeesIDs,
    }
  );

}








//sample branches
StorageCenter nasrCity   = StorageCenter(name: 'Nasr City',  id: 'C12',address: 'Nasr City, 12 abbas elaqqad st.', adminID: '19P7975', categories: [clothes,furniture,electronics] );
StorageCenter maadi      = StorageCenter(name: 'Maadi',      id: 'C10',address: 'Maadi, Elnasr st. ',              adminID: '19P9999', categories: [clothes,furniture] );
StorageCenter mohandseen = StorageCenter(name: 'Mohandseen', id: 'C15',address: 'Mohandseen, opposite to Venus.',  adminID: '19P5555', categories: [clothes,electronics,] );
StorageCenter giza       = StorageCenter(name: 'Giza',       id: 'C11',address: 'Giza, 23 Giza st.',               adminID: '19P6666', categories: [books,furniture,other] );

List <StorageCenter> branches = [ ];



