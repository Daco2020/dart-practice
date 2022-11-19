/// 명시된 요소만 사용할 수 있도록 enum을 사용
enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  Status status = Status.pending;

  if (status == Status.approved) {
    print("승인");
  } else if (status == Status.pending) {
    print("대기");
  } else {
    print("거절");
  }
}
