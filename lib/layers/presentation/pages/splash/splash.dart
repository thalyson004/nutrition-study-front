import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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

    // EasyLoading.show(status: "Loading");
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
        color: Colors.pinkAccent.withOpacity(0.10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "POF",
                style: GoogleFonts.luckiestGuy(
                  fontSize: 60,
                  color: Colors.blue,
                  shadows: [
                    Shadow(
                      color: Colors.blue.shade900.withOpacity(0.1),
                      offset: const Offset(5, 5),
                      blurRadius: 0.5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Pesquisa de Orçamentos Familiares",
                style: GoogleFonts.luckiestGuy(
                  fontSize: 30,
                  color: Colors.red,
                  shadows: [
                    Shadow(
                      color: Colors.blue.shade900.withOpacity(0.1),
                      offset: const Offset(5, 5),
                      blurRadius: 0.5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
