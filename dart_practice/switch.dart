void main() {
  _switch();
}

/// if 와 동일, case는 == 을 의미, break를 꼭 넣어야 함
void _switch() {
  int num = 3;
  switch (num % 3) {
    case 0:
      print(0);
      break;
    case 1:
      print(1);
      break;
    default:
      print(2);
      break;
  }
}
