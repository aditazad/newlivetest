import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyShoppingListPage(),
    );
  }
}

class MyShoppingListPage extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem("Apples", Icons.shopping_cart),
    ShoppingItem("Bananas", Icons.shopping_cart),
    ShoppingItem("Bread", Icons.shopping_cart),
    ShoppingItem("Milk", Icons.shopping_cart),
    ShoppingItem("Eggs", Icons.shopping_cart),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Shopping List")),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add cart functionality here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(shoppingItems[index].icon),
            title: Text(shoppingItems[index].name),
            onTap: () {
              // Add item tap functionality here
            },
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final String name;
  final IconData icon;

  ShoppingItem(this.name, this.icon);
}
