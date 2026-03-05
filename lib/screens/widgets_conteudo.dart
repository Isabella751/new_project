import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Widget de  conteúdo')),
        body: ListView(
          padding: EdgeInsets.all(25),
          children: [
            TituloSessao(titulo: 'Texto de exemplo'),
            Text(
              'Texto de conteudo ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            Divider(),
            TituloSessao(titulo: 'Imagem de exemplo'),
            Image.network('https://picsum.photos/id/237/200/300'),

            Divider(),
            TituloSessao(titulo: 'Icone'),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 50,),
              Icon(Icons.star, color: Colors.yellow, size: 50,),
              Icon(Icons.settings, color: Colors.red, size: 50,),
            ],),

            Divider(),
            TituloSessao(titulo: 'Elevated Button'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Pressione'),
            ),

          ],
        ),
      );
  }
}