void main() {
  _double();
  _datetime();
  _list();
  _map();
  _set();
}

/// 실수(소수점)
void _double() {
  double num1 = 2.5;
  double num2 = 0.5;
  print(num1 + num2); // 3.0
  print(num1 - num2); // 2.0
  print(num1 / num2); // 5.0
  print(num1 * num2); // 1.25
}

void _datetime() {
  DateTime now = DateTime.now();
  print(now); // 2022-11-19 17:46:19.273954
}

void _list() {
  List<int> nums = [1, 2, 3, 4, 5];
  print(nums.length); // 5
  nums.add(2);
  print(nums); // [1, 2, 3, 4, 5, 2] 마지막에 들어감
  print(nums.indexOf(2)); // 1 왼쪽부터 적용
  nums.remove(2);
  print(nums); // [1, 3, 4, 5, 2] 왼쪽부터 적용
}

/// 파이썬의 딕셔너리와 동일
void _map() {
  Map<int?, int?> dict = {null: null, 1: 2};
  print(dict); // {null: null, 1: 2}
  // 키 값 추가하기
  dict.addAll({3: 4});
  print(dict); // {null: null, 1: 2, 3: 4} // 키 중복은 안됨
  // 값 가져오기는 파이썬과 동일
  // 값 넣기도 파이썬과 동일
  // 키값 지우기
  dict.remove(null);
  print(dict);
}

/// 파이썬과 동일 중복 값 제거
void _set() {
  Set<int?> nums = {1, 2, 3, null};
  nums.add(5);
  nums.remove(5);
  print(nums.contains(5)); // false // contains은 파이썬은 in 과 동일
}

String a = "asd";
List b = a.split('');
