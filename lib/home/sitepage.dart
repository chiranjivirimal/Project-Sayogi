// pages/EngineerPage.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sitepage extends StatelessWidget {
  const Sitepage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: const Color(0xFF1AB189),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    
                    IconButton(
                      icon: const Icon(Icons.arrow_back,
                          size: 32, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    
                    Expanded(
                      child: Center(
                        child: Text(
                          'साइटहरु ',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}



