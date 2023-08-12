import 'package:flutter/material.dart';
import 'package:grocessary_shop_app/model/items.dart';
import 'package:grocessary_shop_app/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GroceryItems(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Groccesary App',
        home: IntroPage(),
      ),
    );
  }
}
