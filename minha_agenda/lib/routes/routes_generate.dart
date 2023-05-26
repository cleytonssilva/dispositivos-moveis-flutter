import 'package:flutter/material.dart';

import 'package:minha_agenda/pages/cadastro_clique.dart';
import 'package:minha_agenda/pages/home.dart';
import '../shared/constants.dart';

class RoutesGenerator{
  static const homePage = '/';
  static const addPage = '/clique/add';
  RoutesGenerator._();



  static Route generate(RouteSettings settings){
    switch(settings.name){
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(title: 'My Home'),);
           
      case addPage:
        return _goPage(const CadastroClique());
      default:
        throw const FormatException(AppConstants.pageNotFound);
    }
  }  

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
