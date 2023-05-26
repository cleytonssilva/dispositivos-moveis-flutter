import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minha_agenda/shared/constants.dart';

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
    );
  }
}