import 'package:flutter/material.dart';
import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget de  layout')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSessao(titulo: 'Padding'),
          Container(
            color: const Color.fromARGB(255, 152, 255, 138),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text('Texto com padding intero de 20px'),
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'Align'),
          Container(
            height: 80,
            color: const Color.fromARGB(255, 0, 110, 255),
            alignment: Alignment.bottomRight,
            child: Text('Alinhamento de texto'),
          ),
          Divider(),
          TituloSessao(titulo: 'Center'),
          Container(
            height: 80,
            color: const Color.fromARGB(255, 255, 0, 0),
            child: Center(child: Text('Alinhamento de texto')),
          ),
          Divider(),
          TituloSessao(titulo: 'Sizebox'),
          Column(
            children: [
              Text('Texto acima'),
              SizedBox(height: 20),
              Text('Texto abaixo'),
            ],
          ),
          Divider(),
          TituloSessao(titulo: 'Expanded e Flexible (em Column)'),
          Container(
            height: 200,
            color: Color.fromARGB(255, 255, 120, 120),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 255, 179, 14),
                    child: Center(child: Text('Expanded')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Color.fromARGB(90, 196, 1, 72),
                    child: Text('Flexible (Flex: 2)'),
                  ),
                ),
              ],
            ),
          ),

          Divider(),
          TituloSessao(titulo: 'Expanded e Flexible (Row)'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.deepPurple,
                  child: Center(child: Text('Expanded')),
                ),
              ),
              Flexible(
                child: Container(
                  height: 50,
                  color: Colors.lime,
                  child: Center(child: Text('Flexible')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
