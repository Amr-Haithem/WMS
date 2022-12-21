import 'package:flutter/foundation.dart';

class Category{
  int? numAvailable;

  Category({
    this.numAvailable,
});
}



List <Category> categories = [ ];


//sample categories
Category clothes     = Category();
Category electronics = Category();
Category furniture   = Category();
Category books       = Category();
Category other       = Category();
