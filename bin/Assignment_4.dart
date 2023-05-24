abstract class Account {
  late int accountNumber;
  late double balance;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);

  Account(this.accountNumber, this.balance);
}

class SavingsAccount extends Account {
  late double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance *= (1 - interestRate);
  }
}

class CurrentAccount extends Account {
  late double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
    } else {
      print("indicating insufficient funds");
    }
  }
}

main() {
  //Create instance for SavingAccount

  SavingsAccount saving = SavingsAccount(464440, 3000.0, 0.05);
  print('Savings Account Details:  ');
  print('Account Number: ${saving.accountNumber}');
  print('Initial Balance: ${saving.balance}');

  saving.deposit(500.0);
  print("Balance after deposit: ${saving.balance}");

  saving.withdraw(200.0);
  print('Balance after withdrawal: ${saving.balance}');

  // Creating an instance of CurrentAccount
  CurrentAccount mycurrent = CurrentAccount(525658, 3000.10, 6000.24);

  print('Current Account:');
  print('Account Number: ${mycurrent.accountNumber}');
  print('Initial Balance: ${mycurrent.balance}');

  mycurrent.deposit(2000.0);
  print('Balance after deposit: ${mycurrent.balance}');

  mycurrent.withdraw(500.0);
  print('Balance after withdrawal: ${mycurrent.balance}');
}
