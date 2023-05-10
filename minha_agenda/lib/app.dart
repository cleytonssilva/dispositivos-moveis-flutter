import 'package:flutter/material.dart';

import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',//titulo
      theme: ThemeData(//tema do app
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.pink)

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

