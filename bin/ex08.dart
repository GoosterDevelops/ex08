import 'package:ex08/functions.dart';

void main() {

  //Function exercise 8.1
  print("\nExercise 8.1");
  
  List members = [
    {"associationName": "CS", "firstName": "Jared", "lastName": "Banks", "email": "jbanks@gmail.com"},
    {"associationName": "CS", "firstName": "James", "lastName": "Cunningham", "email": "jcunn@gmail.com"},
    {"associationName": "IS", "firstName": "David", "lastName": "Gosselin", "email": "dgoss@gmail.com"},
    {"associationName": "IS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
    {"associationName": "CS", "firstName": "Frank", "lastName": "Gooster", "email": "fgooster@gmail.com"},
    {"associationName": "CS", "firstName": "Jimmy", "lastName": "Gauthier", "email": "jimgau@gmail.com"},
    {"associationName": "IS", "firstName": "Rob", "lastName": "Bolduc", "email": "rbold@gmail.com"},
    {"associationName": "IS", "firstName": "Pierre", "lastName": "Galhagher", "email": "pgalh@gmail.com"}
  ];
  
  print("\n----------------");
  print("List result sorted by LAST name of members");
  print("----------------\n");
  List resultList = sortByLastName(members);
  printList(resultList);
  
  print("\n----------------");
  print("List result sorted by FIRST name of members");
  print("----------------\n");
  
  resultList = sortByFirstName(members);
  printList(resultList);
  
  print("\n------------------");
  print("List result according to first letter of last name");
  print("------------------\n");
  resultList = getFirstLetterLastName(members, "G");
  printList(resultList);
  
  // this line used to test the class (does not work however because of 'static access'
  //AssociationMembers.addMember('IS', 'dude', 'breton', 'db@gmail.com');
  
  
}

void printList(List l) {
  
  for (int i = 0; i < l.length; i++) {
    print(l.elementAt(i).toString());
  }
  
  return;
}


