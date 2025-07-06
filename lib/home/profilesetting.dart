// pages/EngineerPage.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilesetting extends StatelessWidget {
  const Profilesetting({super.key});

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
                          'प्रोफाइल सेटिंग ',
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
      ),

      body: SingleChildScrollView(
         child:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

           
            Center(
              child: Image.asset(
                'assets/profilephoto.png',   
                height: 136,
                width: 125,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),

            Text(
              'मूल जानकारी ',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF555555)
              ),
            ),

            SizedBox(height: 6,),
          



          ]
      
      ),

    ) 
    )
    );
  }
}

// pages/ChartPage.dart

