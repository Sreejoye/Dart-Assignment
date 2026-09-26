abstract class Payment {
  void makePayment(double amount);
}

class CashPayment extends Payment {
  @override
  void makePayment(double amount) {
    print("Cash payment of $amount completed.");
  }
}

class CardPayment extends Payment {
  @override
  void makePayment(double amount) {
    print("Card payment of $amount completed.");
  }
}

void main() {
  CashPayment cash = CashPayment();
  CardPayment card = CardPayment();

  cash.makePayment(1000);
  card.makePayment(2000);
}