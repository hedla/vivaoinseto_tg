import 'package:flutter/material.dart';
import 'package:flutter_jigsaw_puzzle/flutter_jigsaw_puzzle.dart';
import 'package:google_fonts/google_fonts.dart';


class QuebraCabecas extends StatefulWidget {
  const QuebraCabecas({Key? key}) : super(key: key);

  @override
  State<QuebraCabecas> createState() => _QuebraCabecasState();
}

class _QuebraCabecasState extends State<QuebraCabecas> {

  final puzzleKey = GlobalKey<JigsawWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Viva o Inseto",
          style: GoogleFonts.ubuntu(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await puzzleKey.currentState?.generate();
            },
            child: const Text('Generate'),
          ),
          JigsawPuzzle(
            gridSize: 10,
            image: const AssetImage('assets/images/tesourinha.jpg'),
            onFinished: () {
              // ignore: avoid_print
              print('finished!');
            },
            snapSensitivity: .5, // Between 0 and 1
            puzzleKey: puzzleKey,
            onBlockSuccess: () {
              // ignore: avoid_print
              print('block success!');
            },
          )
        ],
      ),
    );
  }
}
