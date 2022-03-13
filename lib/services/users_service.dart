import 'package:http/http.dart' as http;

import 'package:chat/global/environment.dart';
import 'package:chat/models/user.dart';
import 'package:chat/models/users_response.dart';
import 'package:chat/services/auth_service.dart';

class UsersService {
  Future<List<User>> getUsers() async {
    try {

      final resp = await http.get(Uri.parse('${ Environment.apiUrl }/users'),
      headers: {
        'Content-Type': 'application/json',
        'x-token': await AuthService.getToken()
      }
    );
      final users = usersResponseFromJson( resp.body );

      return users.users;
    } catch (e) {
      return [];
    }
  }
}