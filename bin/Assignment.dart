/**
                    ASSIGNMET MODULE : 04
                    AUTHOR : MAJEDUL ISLAM
**/
abstract class Account{
  int ? accountNumber;
  double balance=0.0;
 void deposit(double amount){
       balance=balance+amount;
       print("Deposit: $amount and Balance: $balance");
  }
 void withdraw(double amount);
}
class SavingsAccount extends Account{
  double interestRate=0.0;
  SavingsAccount(accountNumber,balance,this.interestRate){
    this.accountNumber=accountNumber;
    this.balance=balance;
  }
  @override
 void withdraw(double amount){
         balance=balance-amount;
         balance=balance+(balance*(interestRate/100));
         print("Withdraw: $amount and Balance: $balance");
  }
}
class CurrentAccount extends Account{
  double overdraftLimit=0.0;
  CurrentAccount(accountNumber,balance,this.overdraftLimit){
    this.accountNumber=accountNumber;
    this.balance=balance;
  }
  @override
 void withdraw(double amount) {
      if(amount<=overdraftLimit){
       balance=balance-amount;
       print("Withdraw:$amount and Balance: $balance");
      }
      else{
        print("indicating insufficient funds.");
      }
  }
}
void main(){
  SavingsAccount obj1=SavingsAccount(2019331563,5000.0,10.0);
  obj1.deposit(3000.0);
  obj1.withdraw(1000.0);
  CurrentAccount obj2=CurrentAccount(2019331563,5000.0,60000.0);
  obj2.deposit(2000.0);
  obj2.withdraw(1000.0);
}
