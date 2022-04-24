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
  }
}