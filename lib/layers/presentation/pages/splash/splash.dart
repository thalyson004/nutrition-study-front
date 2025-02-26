import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../home/home.dart';

class Splash extends StatefulWidget {
  static String name = "splash";
  static String route = "/";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    loading(context);
  }

  Future<void> loading(BuildContext context) async {
    // EasyLoading.show(status: "Loading");
    await Future.delayed(const Duration(seconds: 3));
    await EasyLoading.dismiss(animation: false);
    if (context.mounted) context.go(Home.route);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "POF",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Pesquisa de Orçamentos Familiares",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
