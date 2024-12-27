class Money {
  int totalMoney = 0;

  Money operator +(Money money) {
    var moneyDeposit = Money();
    moneyDeposit.totalMoney = totalMoney + money.totalMoney;
    return moneyDeposit;
  }

  Money operator -(Money money) {
    var moneyDeposit = Money();
    moneyDeposit.totalMoney = totalMoney - money.totalMoney;
    return moneyDeposit;
  }
}

void main() {
  var wallet1 = Money();
  wallet1.totalMoney = 10;

  var wallet2 = Money();
  wallet2.totalMoney = 40;

  var wallet3 = wallet2 + wallet1;
  print(wallet3.totalMoney);

}

