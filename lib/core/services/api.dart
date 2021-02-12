import 'dart:convert';

import 'package:eazi_achitecture/core/models/models.dart';
import 'package:http/http.dart' as http;

class Api {
  //API Base URL
  static const BASE_URL = 'https://jsonplaceholder.typicode.com';

  var client = new http.Client();

  //example
  Future<User> getUserProfile(int userID) async {
    var response = await client.get('$BASE_URL/users/$userID');

    // Convert and return
    return User.fromMap(json.decode(response.body));
  }
}
