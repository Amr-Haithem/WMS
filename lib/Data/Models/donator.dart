import 'package:storage_management_system/Data/Models/user.dart';

class Donator extends User {
  int? noOfPrevDonations;
  bool? payingMonthlySadakah; //in Resala, whenever you donate, they create a profile for you and call you every month to offer you donate for someone in a severe need, or, you may apply for a monthly subscription (Sadakah)


}