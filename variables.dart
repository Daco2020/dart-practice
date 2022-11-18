void main() {
  var_variable();
  annotation_variable();
  dynamic_variable();
  nullable_variable();
  final_variable();
  late_variable();
}

void var_variable() {
  // var는 처음 입력한 타입에 따라 변수타입이 결정
  print("var_variable");
  var name = "다코";
  name = "Daco";
  print(name);
}

void annotation_variable() {
  print("annotation_variable");
  String description = "설명";
  description = "설명추가";
  print(description);
}

void dynamic_variable() {
  print("dynamic_variable");
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

void nullable_variable() {
  // ?를 붙이면 null도 허용한다는 뜻
  String? daco = "daco";
  print("nullable_variable");
  print(daco.isEmpty);
  print(daco.isNotEmpty);
  daco = null;
  print(daco?.length);
  if (daco == null) {
    print(daco?.runtimeType);
  } else {
    print(daco.length);
  }
}

/// final은 변하지 않는 상수를 의미함.
/// dart는 docstring을 함수 위에 명시함.
void final_variable() {
  final name = "다코";
  final int count = 5;
  print(name);
  print(count);
}

/// 데이터를 바로 넣지 않고 나중에 넣음.
void late_variable() {
  late final int num;
  num = 9;
  print(num);
  late int count;
  count = 1;
  count = 2;
  print(count);
}
