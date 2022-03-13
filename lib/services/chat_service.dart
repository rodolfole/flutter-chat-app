import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:chat/global/environment.dart';
import 'package:chat/models/messages_response.dart';
import 'package:chat/models/user.dart';
import 'package:chat/services/auth_service.dart';

class ChatService with ChangeNotifier {

  late User userTo;

  Future<List<Message>> getChat( String userId ) async {
    final resp = await http.get(Uri.parse('${ Environment.apiUrl }/messages/$userId'),
      headers: {
        'Content-Type': 'application/json',
        'x-token': await AuthService.getToken()
      }
    );

    final messages = messagesResponseFromJson(resp.body);

    return messages.messages;
  }
}