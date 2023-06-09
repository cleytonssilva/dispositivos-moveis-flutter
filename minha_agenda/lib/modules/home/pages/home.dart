//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:minha_agenda/components/image_header_default.dart';
import 'package:minha_agenda/components/subtitle_widget.dart';
import 'package:minha_agenda/components/title_widget.dart';
//
import 'package:minha_agenda/shared/constants.dart';
import 'package:minha_agenda/shared/styles.dart';

import '../../task/components/list.dart';
import '../../../routes/routes_generate.dart';

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
  //int _counter = 0;

  //void _incrementCounter() {
   // /setState(() {
     // _counter++;
   // });
  //}

  @override
  Widget build(BuildContext context) {
    //var mediaQuery = MediaQuery.of(context)
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
              color: AppStyle.primaryColor,
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/seed/picsum/400/400'),
                fit: BoxFit.cover,
                ),

              ),
              
              child: SizedBox.shrink(),
            ),
            
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(AppConstants.home),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesGenerator.homePage);
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text(AppConstants.category),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesGenerator.categoryPage);
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text(AppConstants.calendar),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesGenerator.calendarPage);
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.toc_outlined),
              title: const Text(AppConstants.about),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesGenerator.aboutPage);
              },
            ),
          ],
        ),
      ),
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const ImageHeaderDefault(),
        //Center(
          //child: Image.network(
            //'https://minhaagenda.apicesistemas.com.br/static/media/Logo.63d31e1c.png',
           // width: 120,
          ),
          
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleDefault(title: AppConstants.welcome),
              TitleDefault(title: widget.name),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ListTasks(),
                  ),
                  ),

              //const Text(AppConstants.welcome),
              //Text(widget.name,
                //style: const TextStyle(
                //color: Colors.blue,
                //fontWeight: FontWeight.bold
            ], //+ List.generate(length, (index) => null)
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
        tooltip: AppConstants.newPage,
        //'Increment',
        child: const Icon(Icons.add),
        //child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
