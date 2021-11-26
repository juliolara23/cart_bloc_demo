import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cart_bloc_app/with_bloc/view/home.dart';
import 'package:cart_bloc_app/with_bloc/view/product_page.dart';

import 'bloc_observer.dart';
import 'with_bloc/view/home.dart';

// Without Bloc
// void main() {
//   runApp(MyApp());
// }
//

//With Bloc
void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ProductPage.routeName: (context) => ProductPage(),
        //CartPage.routeName: (context) => CartPage(),
      },
      initialRoute: HomePage.routeName,
      //home: MyBookings(),
      debugShowCheckedModeBanner: false,
    );
  }
}
