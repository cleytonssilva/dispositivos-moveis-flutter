
import 'package:flutter/material.dart';
import 'package:minha_agenda/shared/constants.dart';

import '../routes/routes_generate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String userName})
      : _userName = userName,
        super(key: key);

  final String _userName;

  get name => _userName;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

//class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    //var mediaQuery = MediaQuery.of(context)
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Image.network(
            'https://minhaagenda.apicesistemas.com.br/static/media/Logo.63d31e1c.png',
            width: 120,
          ),
          //title: Image.network('https://minhaagenda.apicesistemas.com.br/static/media/Logo.63d31e1c.png'),
        ),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(AppConstants.welcome),
              Text(
                widget.name,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        //const Center(
        //child: Icon(
        //Icons.date_range_outlined,
        //size: 64,
        //color: Colors.blueGrey,
        //) //Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //children: <Widget>[
        //const Text("TEXT"),
        //const Text(
        //'You have pushed the button this many times:',
        //),
        //Text(
        //'$_counter',
        //style: Theme.of(context).textTheme.headline4,
        //),
        //],
        //),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print('caminho para home : ${RoutesGenerator.homePage}');
          Navigator.of(context).pushNamed(RoutesGenerator.addPage);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        //child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}