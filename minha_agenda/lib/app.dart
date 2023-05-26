import 'package:flutter/material.dart';
import 'package:minha_agenda/routes/routes_generate.dart';

import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    //var myHome = const MyHomePage(userName: 'Flutter Home Page Demonstração');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',//titulo
      theme: ThemeData(//tema do app
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 167, 168, 207))

      ),
      //home: const MyHomePage(userName: 'Cleyton Silva'),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: RoutesGenerator.homePage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}

