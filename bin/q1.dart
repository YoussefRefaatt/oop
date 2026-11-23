class BankAccount {
  int accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.empty(this.accountID) : balance = 0;

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  void deposit(double amount) {
    balance += amount;
  }
}
void main() {
  BankAccount account1 = BankAccount(101, 1000);

  account1.deposit(500);
  account1.withdraw(200);

  print(account1.balance);

  BankAccount account2 = BankAccount.empty(102);
  print(account2.balance);
}