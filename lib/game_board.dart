import 'package:chess_app/components/piece.dart';
import 'package:chess_app/components/square.dart';
import 'package:chess_app/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:chess_app/helper/helper_methods.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState(

  // Initialize Board
  void _initializeBoard() {
  );

}

class _GameBoardState extends State<GameBoard> {
  late List<List<ChessPiece?>> board;


  }

  // Create a chess piece
  ChessPiece myPawn = ChessPiece(
    type: ChessPieceType.pawn,
    isWhite: false,
    imagePath: 'lib/images/pawn.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GridView.builder(
        itemCount: 8 * 8,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: (context, index) {
          return Square(
            isWhite: isWhite(index),
            piece: myPawn,
          );
        },
      ),
    );
  }
}
