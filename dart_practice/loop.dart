void main() {
  _for();
  _while();
}

/// for (변수 할당, 변수 조건, 반복 액션)
void _for() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  List<int> nums = [5, 22, 13, 104, 3];
  for (int num in nums) {
    print(num);
  }
}

void _while() {
  int count = 0;
  while (count < 5) {
    count += 1;

    if (count == 3) {
      break;
    }
    // coutinue는 현재 루프를 취소하고 다음 루프로 넘어감
    if (count == 2) {
      continue;
    }
    print(count);
  }

  // do ~ while 은 행동 먼저함. 잘 쓰이진 않음
  do {
    count += 1;
    print(count);
  } while (count < 10);
}
