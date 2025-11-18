import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsppuiclone/Views/HomeView/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override

  void initState (){
    super.initState();
    Timer(Duration(
      seconds: 3
      ), (){
        // Navigate
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const HomeView();
        }));
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png',
        width: 100,
        height: 100,
        ),
      ),
    );
  }
}