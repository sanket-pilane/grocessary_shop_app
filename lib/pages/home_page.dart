import 'package:flutter/material.dart';
import 'package:grocessary_shop_app/model/items.dart';
import 'package:grocessary_shop_app/pages/cart_page.dart';
import 'package:provider/provider.dart';

import '../components/item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CartPage(),
        )),
        child: Icon(Icons.shopping_bag_outlined),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      "Pune,Maharashtra",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Good Morning Mate",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Let's Order Fresh \nItems For you",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade600,
              ),
              Expanded(
                child: Consumer<GroceryItems>(
                  builder: (context, value, child) => GridView.builder(
                    padding: EdgeInsets.all(12),
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.75),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () =>
                            Provider.of<GroceryItems>(context, listen: false)
                                .addItem(index),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
