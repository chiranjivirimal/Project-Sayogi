import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_sayogi/loginscreen.dart'; 


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
    void initState(){
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,    
        statusBarBrightness: Brightness.dark,  
        statusBarIconBrightness: Brightness.dark, 
      ),
    );
      _controller= AnimationController( 
        vsync: this,
      duration:  Duration(seconds: 2),)..repeat();

      Timer( Duration(seconds: 2), () {
        Navigator.pushReplacement(context, 
        MaterialPageRoute(builder: (context)=> LoginScreen()),);
      });
    }
    @override
    void dispose(){
      _controller.dispose();
      super.dispose();
    }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(130.0),
            child: Column(
              children: [
                SizedBox(height: 200),
                
                 Image.asset("assets/mainlogo.png", height: 100),

                 SizedBox(height: 300,),
                 RotationTransition(turns: _controller,
                 child:  Icon(Icons.rotate_left_rounded, size: 37,),

                 ) 
              ],
            ),
          ),
        ],
      ),
    );
  }
}