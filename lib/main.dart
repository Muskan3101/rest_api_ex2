import 'dart:convert';

import 'package:rest_api_ex2/student2.dart';

import 'student.dart';

void main(){
  //JSON PARSING(conversion)
  var data = '{"name": "Muskan", "id":"1234"}';
  print(data.runtimeType);
  var jsonDecodeData = json.decode(data);
  print(jsonDecodeData.runtimeType);
  print(jsonDecodeData["name"] + jsonDecodeData["id"]);

  // calling Model Class
  var student = Student(jsonDecodeData);
  print(student.name);
  print(student.id);

  // Calling Factory Constructor
  var student2 = Student2.fromJson(jsonDecodeData);
  print(student2.name);
  print(student2.id);
}
