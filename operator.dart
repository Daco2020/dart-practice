void main() {
  _operator();
}

void _operator() {
  int num = 2;
  num++; // 1씩 연산
  print(num); // 3
  num--;
  print(num); // 2
  num += 5; // 추가할당
  print(num); // 2
  num -= 6;
  print(num); // 2
  int? num2 = 10;
  num2 ??= 5; // ??= 는 null일 때만 할당
  print(num2); // 10
  num2 = null;
  num2 ??= 99;
  print(num2); // 99
  int num3 = 1;
  // ignore: unnecessary_type_check
  print(num3 is int); // is를 이용해 타입 체크
  // ignore: unnecessary_type_check
  print(num3 is! int); // !를 붙이면 is not 을 의미
  // 논리연산자
  // and == &&, or == ||
}
