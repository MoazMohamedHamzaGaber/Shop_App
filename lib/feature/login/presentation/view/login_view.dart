import 'package:flutter/material.dart';

import 'widget/login_view_body.dart';

class LoginView extends StatelessWidget {
   const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: LoginViewBody(),
    );
  }
}
