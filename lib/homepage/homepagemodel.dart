import 'package:mobx/mobx.dart';
part 'homepagemodel.g.dart';


class homepagemodel = _homepagemodelBase with _$homepagemodel;

/* Create a class homepagemodelBase for declaring the count variable with initial value zero then
the variable is used for storing the updated value*/

abstract class _homepagemodelBase with Store{
  @observable
  // Declare a variable count and set its value to zero
  int count  = 0;

  // Create a method setcounter that assigns that particular count value to the variable count
  void setcounter({required int count})=> this.count = count;
}
