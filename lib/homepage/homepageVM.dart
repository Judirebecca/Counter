import 'package:counter/homepage/homepagemodel.dart';

/* Create a class homepageVM that extends from the class homepagemodel */

class homepageVM extends homepagemodel{

  // Create a method incrementCounter
  void incrementCounter(){

    // Increment the value of the variable count
    count = count + 1;

  }
  // Create a method decrementCounter
  void decrementCounter(){
    count = count-1;

  }
}