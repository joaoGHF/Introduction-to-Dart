void main(List<String> args) {
  String? name = "User";
  String? message = "Hello world";
  say(name:name, message:message);
  say(name:name);
  say(message:message);
  say();
}

void say({
    String? name = "Default user", String? message = "Default message"
  }) {
  print("$name: $message");
}