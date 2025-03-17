
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
      appBar: AppBar(
          title: Text(
            "Resultado",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
          ),
              backgroundColor: Color(0xFFE1BEE7),
      ),

      body: Container(
        color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Jogada do Bot:",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto')
            ),

            Image.asset(
                widget.jogadaBot,
                height: 120,
                width: 120,
                fit: BoxFit.contain,
            ),

            SizedBox(height: 20),

            Text("Tua jogada:",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto')
            ),

            Image.asset(widget.jogadaMinha,
              height: 120,
              width: 120,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(
            "Tu ${widget.result.contains("vitoria") ? "venceu!" :
                    widget.result.contains("derrota") ? "perdeu"  :
                    "empatou"}",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),

            Image.asset(widget.result,
                height: 164,
                width: 164,
                fit: BoxFit.contain,
            ),
            SizedBox(height: 20),

            ElevatedButton(onPressed: () => Navigator.pop(context),
                child: Text("Jogar denovo",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto'
                ),),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
