import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  final String _key = 'key';

  save(String user) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(
      _key,
      jsonEncode({
        "user": user,
        "isAuth"
      }),
    );
  }
}
