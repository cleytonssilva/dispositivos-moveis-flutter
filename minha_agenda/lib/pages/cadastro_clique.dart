import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:minha_agenda/shared/constants.dart';
import '../routes/routes_generate.dart';

class CadastroClique extends StatelessWidget{
  const CadastroClique({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                //ao clique voltar para a página anterior
                onPressed: () => Navigator.of(context).pop(),
                child: const Icon(Icons.arrow_back),
              ),
              const Text(AppConstants.pageNotFound),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print('caminho para home : ${RoutesGenerator.homePage}');
          Navigator.of(context).pushNamed(RoutesGenerator.addPage);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}