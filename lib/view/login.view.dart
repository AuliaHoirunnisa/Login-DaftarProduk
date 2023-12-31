import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';
import 'package:flutter_login/view/widgets/button.global.dart';
import 'package:flutter_login/view/widgets/social.login.dart';
import 'package:flutter_login/view/widgets/text.from.global.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailContoller = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Cake',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Login to your account',
                style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),

              //// Email Input
              TextFormGlobal(
                  controller: emailContoller,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress),

              const SizedBox(height: 10),

              //// Password Input
              TextFormGlobal(
                  controller: passwordContoller,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true),
              const SizedBox(height: 10),
              const ButtonGlobal(),
              const SizedBox(height: 25),
              SocialLogin(),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
            ),
            InkWell(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
