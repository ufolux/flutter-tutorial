import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'Tabs/ProductListTab.dart';
import 'Tabs/SearchTab.dart';
import 'Tabs/ShoppingCartTab.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
    );
    return CupertinoApp(
      home: CupertinoStoreHomePage(),
    );
  }
  
}

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('Products')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), title: Text('Cart')),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                  child: ProductListTab(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                  child: SearchTab(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                  child: ShoppingCartTab(),
              );
            });
            break;
          default:
        }
        return returnValue;
      },

    );
  }
}