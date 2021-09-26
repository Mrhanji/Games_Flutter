import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class Chess extends StatefulWidget {
  const Chess({Key key}) : super(key: key);

  @override
  _ChessState createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  ChessBoardController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //controller.resetBoard();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,theme: ThemeData(brightness: Brightness.dark),
      home: new Scaffold(
        body: new Center(
          child: ChessBoard(boardType: BoardType.orange,
            onCheck: (s) => print(s),
            size: MediaQuery.of(context).size.width,
            chessBoardController: controller,
            onMove: (move) {
              print(move);
            },
            onCheckMate: (color) {
              print(color);
            },
            onDraw: () {
              print("DRAW!");
            },
          ),
        ),
      ),
    );
  }
}
