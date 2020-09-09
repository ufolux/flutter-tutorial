import 'package:flutter/cupertino.dart';
import 'package:myApp/Model/app_state_model.dart';
import 'package:myApp/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoStoreApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoStoreApp();
  }
}