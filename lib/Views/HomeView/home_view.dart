import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          title: const Text('WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon:  Icon(Icons.camera_alt_rounded,color: Colors.white.withValues(alpha: .7),)),
            IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert,color: Colors.white.withValues(alpha: .7),)),
          ],
          bottom: TabBar(tabs: [
            
          ]),
        ),
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}