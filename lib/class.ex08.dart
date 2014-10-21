// Function exercise 8.2

class AssociationMembers {
  
  List associations;
  List members;
  
  AssociationMembers() {
    associations = new List();
    members = new List();
  }
  
  List getAssociations() {
    return associations;
  }
  
  List getMembers() {
    return members;
  }
  
  bool addAssociation(String name, String description) {
    if (getAssociationPosition(name) == -1) {
      Map add = {"name": name, "description": description};
      associations.add(add);
      return true;
    }
    return false;
  }
  
  bool addMember(String associationName, String firstName, String lastName, String email) {
    if (getAssociationPosition(associationName) == -1) {
      return false;
    } else if (getMemberAssociationPosition(email, associationName) != -1) {
      return false;
    } else {
      Map add = {"associationName": associationName, "firstName": firstName, "lastName": lastName, "email": email};
      members.add(add);
      return true;
    }
  }
  
  bool removeAssociation(String name) {
    int position = getAssociationPosition(name);
    if (position == -1) {
      return false;
    } else {
      associations.removeAt(position);
      for (int i = 0; i < members.length; i++) {
        Map pointer = members.elementAt(i);
        String associationName = pointer["associationName"];
        if (associationName == name) {
          members.removeAt(i);
          i = i - 1;
        }
      }
      return true;
    }
  }
  
  bool removeMember(String email) {
    int position = getMemberPosition(email);
    if (position == -1) {
      return false;
    } else {
      for (int i = 0; i < members.length; i++) {
        Map pointer = members.elementAt(i);
        String memberEmail = pointer["email"];
        if (memberEmail == email) {
          members.removeAt(i);
          i = i - 1;
        }
      }
      return true;
    }
  }
  
  bool removeMemberAssociation(String email, String associationName) {
    int position = getMemberAssociationPosition(email, associationName);
    if (position == -1) {
      return false;
    } else {
      members.removeAt(position);
      return true;
    }
  }
  
  bool updateAssociationName(String name, String newName) {
    int pos = getAssociationPosition(name);
    if (pos == -1) {
      return false;
    } else if (getAssociationPosition(newName) != -1) {
      return false;
    } else {
      Map pointer = associations.elementAt(pos);
      pointer["name"] = newName;
      associations.removeAt(pos);
      associations.add(pointer);
      for (int i = 0; i < members.length; i++) {
        Map memberPointer = members.elementAt(i);
        if (memberPointer["associationName"] == name) {
          memberPointer["associationName"] = newName;
          members.removeAt(i);
          members.add(memberPointer);
          i = i - 1;
        }
      }
      return true;
    }
  }
  
  bool updateAssociationDescription(String name, String newDescription) {
    int pos = getAssociationPosition(name);
    if (pos == -1) {
      return false;
    } else {
      Map pointer = associations.elementAt(pos);
      pointer["description"] = newDescription;
      associations.removeAt(pos);
      associations.add(pointer);
      return true;
    }
  }
  
  bool updateMemberEmail(String email, String newEmail) {
    int pos = getMemberPosition(email);
    if (pos == -1) {
      return false;
    } else if (getMemberPosition(newEmail) != -1) {
      return false;
    } else {
      for (int i = 0; i < members.length; i++) {
        Map pointer = members.elementAt(i);
        if (pointer["email"] == email) {
          pointer["email"] = newEmail;
          members.removeAt(i);
          members.add(pointer);
          i = i - 1;
        }
      }
      return true;
    }
  }
  
  bool updateMemberFirstName(String email, String newFirstName) {
    int pos = getMemberPosition(email);
    if (pos == -1) {
      return false;
    } else {
      for (int i = 0; i < members.length; i++) {
        Map pointer = members.elementAt(i);
        if (pointer["email"] == email) {
          pointer["firstName"] = newFirstName;
          members.removeAt(i);
          members.insert(i, pointer);
        }
      }
      return true;
    }
  }
  
  bool updateMemberLastName(String email, String newLastName) {
    int pos = getMemberPosition(email);
    if (pos == -1) {
      return false;
    } else {
      for (int i = 0; i < members.length; i++) {
        Map pointer = members.elementAt(i);
        if (pointer["email"] == email) {
          pointer["lastName"] = newLastName;
          members.removeAt(i);
          members.insert(i, pointer);
        }
      }
      return true;
    }
  }
    
  /**** FONCTIONS DE SUPPORT ************/
  
  int getAssociationPosition(String name) {
    for (int i = 0; i < associations.length; i++) {
      Map pointer = associations.elementAt(i);
      String associationName = pointer["name"];
      if (associationName == name) {
        return i;
      }
    }
    return -1;
  }
   
  int getMemberPosition(String email) {
    for (int i = 0; i < members.length; i++) {
      Map pointer = members.elementAt(i);
      String memberEmail = pointer["email"];
      if (memberEmail == email) {
        return i;
      }
    }
    return -1;
  }
  
  int getMemberAssociationPosition(String email, String associationName) {
    for (int i = 0; i < members.length; i++) {
      Map pointer = members.elementAt(i);
      String memberEmail = pointer["email"];
      String memberAssociationName = pointer["associationName"];
      if (memberEmail == email && memberAssociationName == associationName) {
        return i;
      }
    }
    return -1;
  }
  
  void printClass() {
    for (int i = 0; i < associations.length; i++) {
      Map pointer = associations.elementAt(i);
      print(pointer);
    }
    
    for (int i = 0; i < members.length; i++) {
      Map pointer = members.elementAt(i);
      print(pointer);
    }
  }

}
