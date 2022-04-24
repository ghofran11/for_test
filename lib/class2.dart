import 'class.dart';

class Response{
  Failure? failure;
  Person? person;
  bool get hasError => failure!=null;
  Response(dynamic response){
    if(response is Failure) {
      failure = response;
    } else {
      person = response;
    }
    //add one
    //add two
    //add for new branch
    //add again
  }
}