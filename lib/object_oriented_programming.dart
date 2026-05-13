main() {
  Employee employee1 =  Employee(
123456789,
    hireDate: DateTime.now(),
    payRate: 300,
    phoneNumber: "123456789",
    title: "CEO"
  );
  // Employee employee1 = Employee(1235678, DateTime.now(), "+234 81 234 232", 300, "CEO");
  employee1.getHired();
  Instructor instructor1 =Instructor(
      "John Doe",
      123456789,
      hireDate: DateTime.now(),
      payRate: 300,
      phoneNumber: "123456789",
      title: "CEO"
  );
}

//Superclass
 class Employee {
  //Positional
  // Employee(this.socialSecurityNumber, this.hireDate, this.phoneNumber, this.payRate, this.title);
  //Name Constructor
  Employee(
     this.socialSecurityNumber,{
    required this.hireDate,
    required this.phoneNumber,
    required this.payRate,
    required this.title,
  });

  //Attributes
  int socialSecurityNumber;
  String phoneNumber;
  DateTime hireDate;
  String title;
  double payRate;

  ///Methods
  void getHired() {
    print("You are hired as the $title!");
  }

  void terminate() {
    print("You are fired!");
  }
}

class Instructor extends Employee {
  String name;

  Instructor(
    this.name,
    super.socialSecurityNumber,
      {required super.hireDate,
        required super.phoneNumber,
        required super.payRate,
        required super.title,}
  );
}


class Manager extends Employee {
  String name;

  Manager(
      this.name,
      super.socialSecurityNumber,
      {required super.hireDate,
        required super.phoneNumber,
        required super.payRate,
        required super.title,}
      );
}
