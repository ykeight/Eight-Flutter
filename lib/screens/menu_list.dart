import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuList extends StatelessWidget {
  final List<MenuItem> menuItems;

  const MenuList({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final menuItem = menuItems[index];
        return ListTile(
          title: Text(menuItem.name),
          subtitle: Text(menuItem.description),
          trailing: Text('\$${menuItem.price}'),
        );
      },
    );
  }
}