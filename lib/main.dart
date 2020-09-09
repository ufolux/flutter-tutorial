import 'package:flutter/cupertino.dart';
import 'package:myApp/Theme/MyTheme.dart';
import 'package:myApp/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoStoreApp();
  }
}