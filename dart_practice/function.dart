void main() {
  int result = add_nums(50, 100, 999);
  print(result);
  int result1 = kwargs_add_nums(1, y: 2);
  print(result1);
  print("result : ${result * result1}");
  int result2 = arrow_add_nums(1, y: 1000);
  print(result2);
  _typedef();
}

int add_nums(int x, [int y = 0, int z = 0]) {
  // [] 안에 넣은 매개변수는 Optionald을 의미, 기본값을 설정해주어야 함
  // 필수값은 기본값을 넣을 수 없음
  int sum = x + y + z;
  return sum;
}

int kwargs_add_nums(
  // 포지셔널 파라미터
  int x, {
  // 키워드인자로 받으려면 required을 붙인다
  required int y,
  // 안넣으면 Optional이다. []안써도 됨
  int z = 0,
}) {
  int sum = x + y + z;
  return sum;
}

int arrow_add_nums(
  int x, {
  required int y,
  int z = 0,
}) => // 화살표 함수는 바로 리턴할 수 있음
    x + y + z;

// 파라미터를 타입으로 정의할 수 있음 / 함수 안에서 선언 불가
typedef Operation = int Function(int x, int y);

void _typedef() {
  int add(int x, int y) => x + y;
  int subtract(int x, int y) => x - y;

  // 미리 선언한 파라미터 타입으로 함수를 할당하여 사용
  Operation func1 = add;
  int result1 = func1(1, 2);
  Operation func2 = subtract;
  int result2 = func2(1, 2);
  print(result1 * result2); // -3

  // 파라미터 타입을 사용할 함수를 만들어 두고 그때그때 구현함수를 주입하여 사용
  int calc(int x, int y, Operation func) {
    return func(x, y);
  }

  int result3 = calc(1, 2, add);
  print(result3); // 3
}
