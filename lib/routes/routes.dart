
import 'package:chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import 'package:chat/screens/loading_screen.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/register_screen.dart';
import 'package:chat/screens/users_screen.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) => UsersScreen(),
  'chat': (_) => ChatScreen(),
  'login': (_) => LoginScreen(),
  'register': (_) => RegisterScreen(),
  'loading': (_) => LoadingScreen(),



};