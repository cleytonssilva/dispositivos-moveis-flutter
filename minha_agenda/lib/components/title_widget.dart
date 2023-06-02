import 'package:flutter/material.dart';
import 'package:minha_agenda/components/text_default.dart';
import 'package:minha_agenda/shared/styles.dart';

class TitleDefault extends StatelessWidget {
  final String _title;
  final double _fontSize;

  const TitleDefault({
    required String title,
    double? fontSize,
    Key? key,
  })  : _title = title,
        _fontSize = fontSize ?? 18.0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextDefault(
      title: _title,
      color: AppStyle.primaryColor,
      fontWeight: FontWeight.bold,
      fontSize: _fontSize,
    );
  }
}        //const Center(
     