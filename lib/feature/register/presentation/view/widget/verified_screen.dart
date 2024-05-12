import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/login/presentation/view/login_view.dart';
import 'package:flutter/material.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 65,
            left: 25,
            bottom: 30,
            right: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset('assets/images/correct.png'),
              const SizedBox(
                height: 25,
              ),
              const Text('Register Success',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              buildMaterialButton(
                function: () {
                  navigateAndFinish(context, const LoginView());
                },
                text: 'Login',
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade900,
                width: 220,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
