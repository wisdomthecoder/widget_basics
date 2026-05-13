
main() {
  Customer customer1 = Customer(name: "Mishel");
  customer1.getBalance();
  customer1.deposit(2000);
  customer1.getBalance();
  customer1.withdraw(5000);
  customer1.getBalance();
// customer1.balance = 100000;
// print(customer1.balance);
//

}
class Customer {
  String name;
  double _balance =0;

  Customer({required this.name});

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    _balance -= amount;
  }
  void getBalance(){
    print(_balance);
  }
}
