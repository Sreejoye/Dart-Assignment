void main() {
  Map<String, dynamic> person = {
    "name": "Sreejoye",
    "address": "Sylhet",
    "age": 22,
    "country": "Bangladesh"
  };

  person["country"] = "Australia";

  person.forEach((key, value) {
    print("$key : $value");
  });
}