import 'package:flutter/material.dart';

class TextDefault extends StatelessWidget {
  
  final String _title;
  final double? _fontSize;
  final Color _color;
  final FontWeight? _fontWeight;


  const TextDefault({
    required String title,
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    Key? key,
  })  : _title = title,
        _fontSize = fontSize,
        _color = color,
        _fontWeight = fontWeight;
        

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        color: _color,
        fontWeight: _fontWeight,
        fontSize: _fontSize,
      ),
    );
  }
}