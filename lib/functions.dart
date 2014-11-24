
// Function exercise 8.1
List sortByLastName(List m) {
  
  List returnList = new List();
  Map pointer = m.elementAt(0);
  returnList.add(pointer);
  
  for (int i = 1; i < m.length; i++) {
    bool inserted = false;
    pointer = m.elementAt(i);
    String lastName = pointer["lastName"];
    String firstName = pointer["firstName"];
    for (int j = 0; j < returnList.length; j++) {
      Map returnPointer = returnList.elementAt(j);
      String returnLastName = returnPointer["lastName"];
      String returnFirstName = returnPointer["firstName"];
      if (lastName.compareTo(returnLastName) < 0 && inserted == false) {
        returnList.insert(j, pointer);
        inserted = true;
      } else if (lastName.compareTo(returnLastName) == 0 && inserted == false) {
        for (int k = j; k < returnList.length; k++) {
          returnPointer = returnList.elementAt(j);
          returnLastName = returnPointer["lastName"];
          returnFirstName = returnPointer["firstName"];
          if (lastName.compareTo(returnLastName) == 0 && firstName.compareTo(returnFirstName) < 0 && inserted == false) {
            returnList.insert(k, pointer);
            inserted = true;
          } else if (lastName.compareTo(returnLastName) != 0 && inserted == false) {
            returnList.insert(k, pointer);
            inserted = true;
          }
        }
      }
    }
    if (inserted == false) {
      returnList.add(pointer);
    }
  }
  
  return returnList;
}

List sortByFirstName(List m) {
  
  List returnList = new List();
  Map pointer = m.elementAt(0);
  returnList.add(pointer);
  
  for (int i = 1; i < m.length; i++) {
    bool inserted = false;
    pointer = m.elementAt(i);
    String lastName = pointer["lastName"];
    String firstName = pointer["firstName"];
    for (int j = 0; j < returnList.length; j++) {
      Map returnPointer = returnList.elementAt(j);
      String returnLastName = returnPointer["lastName"];
      String returnFirstName = returnPointer["firstName"];
      if (firstName.compareTo(returnFirstName) < 0 && inserted == false) {
        returnList.insert(j, pointer);
        inserted = true;
      } else if (firstName.compareTo(returnFirstName) == 0 && inserted == false) {
        for (int k = j; k < returnList.length; k++) {
          returnPointer = returnList.elementAt(j);
          returnLastName = returnPointer["lastName"];
          returnFirstName = returnPointer["firstName"];
          if (firstName.compareTo(returnFirstName) == 0 && lastName.compareTo(returnLastName) < 0 && inserted == false) {
            returnList.insert(k, pointer);
            inserted = true;
          } else if (firstName.compareTo(returnFirstName) != 0 && inserted == false) {
            returnList.insert(k, pointer);
            inserted = true;
          }
        }
      }
    }
    if (inserted == false) {
      returnList.add(pointer);
    }
  }
  
  return returnList;
}

List getFirstLetterLastName(List m, String letter) {
  
  List returnList = new List();
  
  for (int i = 0; i < m.length; i++) {
    Map pointer = m.elementAt(i);
    String lastName = pointer["lastName"];
    if(lastName.substring(0, 1) == letter) {
      returnList.add(pointer);
    }
  }
  
  return returnList;
}

