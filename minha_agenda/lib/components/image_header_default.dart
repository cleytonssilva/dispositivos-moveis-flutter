import 'package:flutter/material.dart';
import 'package:minha_agenda/components/title_widget.dart';

class ImageHeaderDefault extends StatelessWidget{
  const ImageHeaderDefault({Key? key}) : super(key: key);



 @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
        child:Image.network(
              'https://minhaagenda.apicesistemas.com.br/static/media/Logo.63d31e1c.png',
        width: 120,
        ),
        ),
       ),
       
    );
  
  }
}