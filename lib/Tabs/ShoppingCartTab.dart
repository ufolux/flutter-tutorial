import 'package:flutter/cupertino.dart';
import 'package:myApp/Model/app_state_model.dart';
import 'package:provider/provider.dart';

class ShoppingCartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            ),
          ],
        );
      },
    );
  }
}