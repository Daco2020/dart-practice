void main() {
  String name = f_string();
  print(name);
}

///파이썬 f-string과 유사
String f_string() {
  String name = "daco";
  return "${name} ${name}"; // daco daco
  // "$name $name"; 이것도 됨
  // "$name.runtimeType $name"; 메서드 호출은 안됨
}
