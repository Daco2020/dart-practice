void main() {
  var_variable();
  annotation_variable();
  dynamic_variable();
}

void var_variable() {
  // var는 처음 입력한 타입에 따라 변수타입이 결정
  var name = "다코";
  name = "Daco";
  print(name);
}

void annotation_variable() {
  String description = "설명";
  description = "설명추가";
  print(description);
}

void dynamic_variable() {
  dynamic name = "Daco";
  if (name is String) {
    var len = name.length;
    print(len);
  }
  name = 20;
  if (name is int) {
    var is_even = name.isEven;
    print(is_even);
  }
}