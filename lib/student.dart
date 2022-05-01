//model class
class Student{
  var name ;
  var id;

  Student(Map<String, dynamic> map){
    name = map["name"];
    id = map["id"];
  }
}