import 'dart:math';

import 'package:exercicio2/screens/segunda.dart';
import 'package:flutter/material.dart';

class Primeira extends StatefulWidget {
  const Primeira({super.key});

  @override
  State<Primeira> createState() => _PrimeiraState();
}

class _PrimeiraState extends State<Primeira> {

  final List<String> opcoes = ["pedra", "papel", "tesoura"];
  String jogadaBot = "padrao";
  void jogar(String jogadaMinha) {
    setState(() {
      jogadaBot = opcoes[Random().nextInt(3)];
    });

    String result;

    if (jogadaMinha == jogadaBot) {
      result = "empate";
    } else if (
        (jogadaMinha == "pedra" && jogadaBot == "tesoura") ||
        (jogadaMinha == "papel" && jogadaBot == "pedra") ||
        (jogadaMinha == "tesoura" && jogadaBot == "papel")) {
      result = "vitoria";
    } else {
      result = "derrota";
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Segunda(
            jogadaMinha: "assets/images/$jogadaMinha.png",
              jogadaBot: "assets/images/$jogadaBot.png",
              result: "assets/images/$result.png",
              title: '',
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jankenpô',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),
            ),
      backgroundColor: Colors.purple),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
              'Bot',
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/$jogadaBot.png', height: 100),
            SizedBox(height: 20),

            Text(
              'selecione sua jogada aí',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: opcoes.map((opcao){
                return GestureDetector(
                  onTap: () => jogar(opcao),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/$opcao.png'),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      );
  }
}
