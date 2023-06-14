import 'package:flutter/material.dart';
import '../modules/category/pages/category.dart';
import '../modules/home/pages/cadastro_clique.dart';
import '../modules/home/pages/home.dart';
import '../shared/constants.dart';
import '../modules/home/pages/about.dart';
import '../modules/home/pages/calendar.dart';

class RoutesGenerator {
  static const homePage = '/';
  static const addPage = '/clique/add';
  static const aboutPage = '/about';
  static const categoryPage = '/category';
  static const calendarPage = '/calendar';
  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(userName: 'Cleyton Silva'),
        );
      case addPage:
        return _goPage(const CadastroClique());

      case aboutPage:
        return _goPage(const AboutPage());

      case categoryPage:
        //print('Marcos');
        return _goPage(const CategoryPage());

      case calendarPage:
        return _goPage(const CalendarPage());

      default:
        throw const FormatException(AppConstants.pageNotFound);
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
