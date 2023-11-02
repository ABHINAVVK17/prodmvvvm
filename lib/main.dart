import 'package:flutter/material.dart';
import 'package:prodmvvvm/UI/Home/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'Webservice/productprovider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(create: (context) => ProductProvider(),
        child: HomeView()
      ),
    );
  }
}


