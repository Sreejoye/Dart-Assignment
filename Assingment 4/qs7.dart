void main() {
  Map<String, String> contacts = {
    "John": "01711111111",
    "Mina": "01822222222",
    "Rafi": "01933333333",
    "Ali": "01644444444"
  };

  var result = contacts.keys.where((key) => key.length == 4);

  print(result);
}