mixin LoggerMixin {
  void logMessage(String message) {
    print("LOG: $message");
  }
}

class User with LoggerMixin {
  void userAction() {
    logMessage("User action completed.");
  }
}

class Product with LoggerMixin {
  void productAction() {
    logMessage("Product action completed.");
  }
}

void main() {
  User user = User();
  Product product = Product();

  user.userAction();
  product.productAction();
}