import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //chamando o material app
    return MaterialApp(
      home: Scaffold(
        //tudo q ta no corpo do APP nao fica em baixo dos icones de SINAL, BATERIA, etc...
        body: SafeArea(
          // NESTE EXEMPLO DENTRO DO SAFE AREA FOI CRIADO DOIS (2) ROW
          // POIS EU ACREDITAVA Q, CADA ROW() IRIA FICAR UMA LINHA COM TIPO 3 CONTAINERS
          // UM EM BAIXO DO OUTRO... TIPO PRIMEIRO ROW 3 CONTAINER E O SEGUNDO ROW COM OS
          //CONTAINERS EM BAIXO, MAS ISSO NAO ACONTECEU... O SEGUNDO ROW
          //FICOU NA MESMA LINHA Q O PRIMEIRO ROW... ENTAO FICOU TUDO APERTADO OS CONTAINERS
          //NA MESMA LINHA...

          //ISSO ACONTECEU POIS O SEGUNDO ROW TA DENTRO DO MESMO CHILDREN DO PRIMEIRO ROW
          //SENDO ASSIM FICOU NA MESMA LINHA...
          // E SE EU COLOCAR O SEGUNDO ROW FORA DO CHILDREN DO PRIMEIRO ROW, DA UMA
          //MENSAGEM DE ERRO
          child: Row(
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.green,
                child: Text('opa'),
              ),
              Row(
                children: [
                  //container, tamanho, cor, texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Text('whatss up?'),
                  ),
                  //container, altura, cor, texto
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.lightBlue,
                    child: Text('dalli'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
