
import 'package:either_dart/either.dart';

import '../class.dart';

class Response3 {
  Either<Failure, Person>? person;
  Response3(dynamic response) {
    if (response is Failure)
      person = Left(response);
    else
      person = Right(response);
  }
}