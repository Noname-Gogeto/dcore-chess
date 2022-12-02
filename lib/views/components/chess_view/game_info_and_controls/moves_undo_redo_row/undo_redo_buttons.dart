import 'package:chess/model/app_model.dart';
import 'package:chess/views/components/chess_view/game_info_and_controls/moves_undo_redo_row/rounded_icon_button.dart';
import 'package:flutter/cupertino.dart';

class UndoRedoButtons extends StatelessWidget {
  final AppModel appModel;

  bool get undoEnabled {
    if (appModel.playingWithAI) {
      return appModel.game.board.moveStack.length > 1 && !appModel.isAIsTurn;
    } else {
      return appModel.game.board.moveStack.isNotEmpty;
    }
  }

  bool get redoEnabled {
    if (appModel.playingWithAI) {
      return appModel.game.board.redoStack.length > 1 && !appModel.isAIsTurn;
    } else {
      return appModel.game.board.redoStack.isNotEmpty;
    }
  }

  const UndoRedoButtons(this.appModel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RoundedIconButton(
            CupertinoIcons.arrow_counterclockwise,
            onPressed: undoEnabled ? () => undo() : null,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RoundedIconButton(
            CupertinoIcons.arrow_clockwise,
            onPressed: redoEnabled ? () => redo() : null,
          ),
        ),
      ],
    );
  }

  void undo() {
    if (appModel.playingWithAI) {
      appModel.game.undoTwoMoves();
    } else {
      appModel.game.undoMove();
    }
  }

  void redo() {
    if (appModel.playingWithAI) {
      appModel.game.redoTwoMoves();
    } else {
      appModel.game.redoMove();
    }
  }
}
