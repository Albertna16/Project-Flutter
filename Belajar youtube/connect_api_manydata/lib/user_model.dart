import 'dart:convert';
import 'package:http/http.dart' as http;

class User{
  late String id;
  late String name;

  User({required this.id, required this.name});

  factory User.createUser(Map<String, dynamic> object){
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name']
    );
  }

  static Future <List<User>> getUsers(String page) async {
    String apiURL = "https://reqres.in/app/users?page=" + page;

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = await json.decode(json.encode(apiResult.body));
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    
    List<User> users = [];
    for(int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }

    return users;

  }
}

// Exception has occurred.
// FormatException (FormatException: Unexpected character (at character 1)
// <!DOCTYPE html>
// ^
// )