### webview_flutter 사용법

WebView 의 initialUrl 에 웹페이지 Url을 넣는다.
javascriptMode 에는 JavascriptMode.unrestricted 을 명시한다.(unrestricted는 무제한을 뜻함)


```dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://daco2020.tistory.com/', // 지정한 웹페이지를 앱으로 보여줌
        javascriptMode: JavascriptMode.unrestricted, // 웹페이지의 자바스크립트를 실행하려면 추가 (e.g. 유튜브 영상)
      ),
    );
  }
```

<br><br>

```dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daco'),
        centerTitle: true, // ios와 안드로이드의 AppBar 정렬이 다르므로 지정해주어야 함
        backgroundColor: Colors.orange, // AppBar 색상변경가능
      ),
      body: WebView(
        initialUrl: 'https://daco2020.tistory.com/', // 웹페이지를 앱으로 보여줌
        javascriptMode: JavascriptMode.unrestricted, // 자바스크립트를 실행하려면 추가 e.g. 유튜브 영상
      ),
    );
  }
}
```