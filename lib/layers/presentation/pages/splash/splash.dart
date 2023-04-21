import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../home/home.dart';

class Splash extends StatefulWidget {
  static String name = "splash";
  static String route = "/";
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    //TODO: Build a splash screen
    EasyLoading.show(status: "Loading");
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      await EasyLoading.dismiss(animation: false);
      context.go(Home.route);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
