import 'dart:convert';

import 'package:flutter/rendering.dart';
import 'package:provider_lesson/game/models/game.dart';
import 'package:http/http.dart' as http;

class GameSource {
  static Future<List<Game>?> getLive() async {
    String url = 'https://api.allorigins.win/raw?url=https://www.freetogame.com/api/games';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List list = jsonDecode(response.body);
        debugPrint('API Response: $list'); // Print semua data
        
        List<Game> games = list.map((e) => Game.fromJson(Map.from(e))).toList();
        debugPrint('Games: ${games.map((g) => g.thumbnail).toList()}'); // Print thumbnail
        return games;
      } else {
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
