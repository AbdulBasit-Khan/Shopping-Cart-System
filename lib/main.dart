import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_tutorials/cart_provider.dart';
import 'package:shopping_cart_tutorials/product_list.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(create: (_) => CartProvider(),
    child:Builder(builder: (BuildContext context){
      return MaterialApp(
         title:'Flutter Demo',
          debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primarySwatch: Colors.blue
        ),
        home:const ProductListScreen()
      );
    })
   );
  }
}



