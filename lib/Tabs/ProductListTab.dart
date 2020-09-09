import 'package:flutter/cupertino.dart';
import 'package:myApp/Model/app_state_model.dart';
import 'package:provider/provider.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<AppStateModel>(
          builder: (context, model, child) {
            final products = model.getProducts();
            return const CustomScrollView(
              semanticChildCount: products.length,
              slivers: <Widget>[
                CupertinoSliverNavigationBar(
                  largeTitle: const Text('Cupertino Store'),
                ),
              ],
            );
          }
      ),
    );
  }
}