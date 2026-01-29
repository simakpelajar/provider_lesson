import 'package:flutter/material.dart';
import 'package:provider_lesson/game/models/game.dart';
import 'package:provider_lesson/game/source/game_source.dart';

enum GameStatus {
  init, loading, loaded, failure
}

class GameProvider extends ChangeNotifier {
  GameStatus status = GameStatus.init;

  List<Game> _game = [];
  List<Game> get games => _game;

  fetchLiveGames() async {
    status = GameStatus.loading;
    notifyListeners();

    final list = await GameSource.getLive();
    if (list == null) {
      status = GameStatus.failure;
      notifyListeners();
      return;
    }
    _game = list;
    status = GameStatus.loaded;
    notifyListeners();
  }
}