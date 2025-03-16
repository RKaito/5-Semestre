
import 'package:flutter/material.dart';

class Segunda extends StatefulWidget {

  final String jogadaMinha;
  final String jogadaBot;
  final String result;

  const Segunda({super.key, required String title,
  required this.jogadaMinha,
  required this.jogadaBot,
  required this.result,
  });

  @override
  State<Segunda> createState() => _SegundaState();
}

class _SegundaState extends State<Segunda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("resultado")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Jogada do Bot:",
            style: TextStyle(fontSize: 20)),
            Image.asset(widget.jogadaBot, height: 100),
            SizedBox(height: 20),

            Text("Tua jogada:",
            style: TextStyle(fontSize: 20)),
            Image.asset(widget.jogadaMinha, height: 100),
            SizedBox(height: 20),

            Text(
            "tu ${widget.result.contains("vitoria") ? "venceu!" :
                    widget.result.contains("derrota") ? "perdeu"  :
                    "empatou"}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Image.asset(widget.result, height: 120),
            SizedBox(height: 20),

            ElevatedButton(onPressed: () => Navigator.pop(context),
                child: Text("jogar denovo"),
            ),
          ],
        ),
      ),
    );
  }
}
