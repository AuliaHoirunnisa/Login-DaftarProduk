import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';
import 'package:flutter_login/view/login.view.dart';
import 'package:get/get.dart';
//import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text('Logo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
