import 'package:flutter/material.dart';

import 'drawer.dart';

abstract class MyPageState<T extends StatefulWidget> extends State {
  List<Widget> drawerItems(BuildContext context) {
    return menuItems
        .map(
          (item) => ListTile(
            leading: const Icon(Icons.my_library_books),
            title: Text(
              item['menuName'] as String,
              style: TextStyle(
                  color: isHighlighted[menuItems.toList().indexOf(item)]
                      ? Colors.amber
                      : Colors.grey),
            ),
            onTap: () {
              isHighlighted = isHighlighted.map((mark) => false).toList();
              isHighlighted[menuItems.toList().indexOf(item)] = true;

              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => item['route'] as Widget)));
            },
          ),
        )
        .toList();
  }
}
