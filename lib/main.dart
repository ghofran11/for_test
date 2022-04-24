import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:test_either/update_either/class_new.dart';

import 'class.dart';
import 'class2.dart';
import 'home.dart';

void main() {
  // //runApp(const MyApp());

  //v1
  // Person validResponse = Person('Saravana');
  // Failure failedReponse = Failure('something went wrong');
  // Response res = Response(validResponse);
  // if(res.hasError){
  //   print('Failed : ${res.failure?.message}');
  // }else{
  //   print('Response : ${res.person?.name}');
  // }
  //prin

  //v2
  // Either<String, String> response = Left("im ghogh");
  // response.fold(
  //         (x) => print('Int : $x'),
  //         (stringValue) => print('String : $stringValue')
  // );
  //


  //v3
  Person validResponse = Person('Saravana');
  Failure failedReponse = Failure('something went wrong');
  Response3 myResponse = Response3(failedReponse);

  myResponse.person!.fold(
        (left) => print('Failed : ${left.message}'),
        (person) => print('Response : ${person.name}'),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

