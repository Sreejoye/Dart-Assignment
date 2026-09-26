void main() {
  List<String> friends = [
    "Anik",
    "Sreejoye",
    "Arafat",
    "Nabil",
    "Rafi",
    "Arman",
    "Tania"
  ];

  var result = friends.where((name) => name.startsWith("A"));

  print(result);
}