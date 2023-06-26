import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String movieDBKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay api key';
  static String movieDBToken =
      dotenv.env['THE_MOVIEDB_TOKEN'] ?? 'No hay token';
}
