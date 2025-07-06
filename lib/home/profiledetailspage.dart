// pages/profile_details_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_sayogi/home/profilesetting.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: const Color(0xFF1AB189),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Text(
                      'U',
                      style: GoogleFonts.poppins(color: Colors.teal),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'विशाल रिमाल',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
    vertical: 40,   
    horizontal: 16, 
  ),
        child: Center(
          
           child: GestureDetector(
            behavior: HitTestBehavior.opaque,      // खाली ठाउँ पनि ट्याप हुन्छ
            onTap: () {
              // 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Profilesetting()),
              );
            },

          
          child: Container(
            height: 56,
            width: 407, 
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0x63000000)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: const Icon(
                    Icons.person_outline,
                    size: 35,
                    color: Color(0xFF555555),
                  ),
                ),

                
              Expanded(
  child: Text(
    'विशाल रिमाल',
    style: GoogleFonts.poppins(
      fontSize: 18,          
      fontWeight: FontWeight.w500,
      color: const Color(0xFF222222),
    ),
    overflow: TextOverflow.ellipsis, 
  ),
),

              
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: IconButton(
                    padding:
                        const EdgeInsets.all(8), 
                    splashRadius: 20,
                    onPressed: () {
                      
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color(0xFF222222),
                    ),
                  ),
                ),
              ],
            ),
          ),
           )


        ),
      ),
    );
  }
}
