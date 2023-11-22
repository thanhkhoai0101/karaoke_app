import 'package:flutter/material.dart';
import 'package:karaoke_api/api.dart';
import 'package:karaoke_app/component/splash_screen_load.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final auth = AuthApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Home Page"),
      actions: [
        IconButton(onPressed: (){
          auth.logout();
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SplashScreenLoad()), (route) => false);
        }, icon: Icon(Icons.logout))
      ],
      ),
      body: const Center(child: Text("Home Page"),),
    );
  }
}
