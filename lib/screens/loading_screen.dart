import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/users_screen.dart';
import 'package:chat/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: checkLoginState(context),
        builder: (context, snapshot) {
          return Center(
            child: Text('Wait...')
          );
        },
      ),
   );
  }

  Future checkLoginState( BuildContext context ) async {

    final authService = Provider.of<AuthService>(context, listen: false);

    final authenticated = await authService.isLoggedIn();

    if ( authenticated ) {

      Navigator.pushReplacement(context, PageRouteBuilder(
        pageBuilder: ( _ , __ , ___ ) => UsersScreen(),
        transitionDuration: Duration(milliseconds: 0)
      ));
    } else {
      Navigator.pushReplacement(context, PageRouteBuilder(
        pageBuilder: ( _ , __ , ___ ) => LoginScreen(),
        transitionDuration: Duration(milliseconds: 0)
      ));
    }
  }
}