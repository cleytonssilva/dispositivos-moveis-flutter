import 'package:flutter/material.dart';


class ImageHeaderDefault extends StatelessWidget{
  const ImageHeaderDefault({Key? key}) : super(key: key);



 @override
  Widget build(BuildContext context){
    return Align(
      alignment: Alignment.center,
      child: Image.network(
        'https://minhaagenda.apicesistemas.com.br/static/media/Logo.63d31e1c.png',
           width: 100,
        ),
    );
  }
}