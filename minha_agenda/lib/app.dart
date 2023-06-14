import 'package:flutter/material.dart';
import 'package:minha_agenda/routes/routes_generate.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var myHome = const MyHomePage(userName: 'Flutter Home Page Demonstração');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo', //titulo
      theme: ThemeData(
          //tema do app
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 42, 42, 83))),
      //home: const MyH comePage(userName: 'Cleyton Silva'),
      // home: const MyHomePage(
      //   userName: 'Cri',
      // ),
      initialRoute: RoutesGenerator.homePage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}
