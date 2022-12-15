

Row와 Column, Container를 부모 자식 관계로 만들어 다양하게 UI를 꾸밀 수 있음

### 요소 정렬방법
MainAxisAlignment - 주축 정렬
CrossAxisAlignment - 교차축 정렬
MainAxisSize - 주축 넓이

### 반응형 넓이와 높이 사이즈
width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height,


## Example:
```dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(key: key); // Key를 받으면 super에다가 그대로 넣어주면 됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // 커맨드 + B 로 옵션 인자 확인 가능
        bottom: false,
        child: Container(
          color: Colors.black,
          // width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            // MainAxisAlignment - 주축 정렬
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // CrossAxisAlignment - 교차축 정렬
            crossAxisAlignment: CrossAxisAlignment.center,
            // MainAxisSize - 주축 넓이
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible -> Row, Column 칠드런에서만 사용 가능
              Expanded(
                // 남은 공간을 모두 차지하라
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                // 다른 Expanded 와 공간을 나눈다
                flex: 2, // Expanded가 공간을 먹는 비율, 기본은 1
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Flexible(
                // child가 차지하는 공간 외에는 버린다 // 잘 사용안함
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```