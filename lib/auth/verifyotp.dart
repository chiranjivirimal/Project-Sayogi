import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/home/dashboard.dart';          // pubspec.yaml मा google_fonts dependency थप्नुहोस्
// (यदि माथिको ग्राफिक आइकन चाहिन्थ्यो भने: import 'package:font_awesome_flutter/font_awesome_flutter.dart';)


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTP Verification',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const OtpVerifyScreen(),
    );
  }


class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final _pin1 = TextEditingController();
  final _pin2 = TextEditingController();
  final _pin3 = TextEditingController();
  final _pin4 = TextEditingController();

  // --- सानो helper: एउटै डिज़ाइनको OTP box ---
  Widget _buildOtpBox(TextEditingController controller) {
    return SizedBox(
      width: 70,
      height: 60,
      child: TextField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF0064A7)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFE1E1E1)),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Transparent app bar with back arrow
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ------------ Illustration (placeholder stack) ------------
                const SizedBox(height: 20),

// 140 px उचाइको ठाउँमा एउटै चित्र
SizedBox(
  height: 141,
  width: 196,
  child: Center(
    child: Image.asset(
      'assets/verify.png', 
      fit: BoxFit.contain,          
    ),
  ),
),


          SizedBox(height: 20,),      
                // ---------------- Heading & Subtitle ----------------
                Text(
                  'OTP प्रमाणीकरण',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: const Color(0xFF1AB189),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'हामीले पठाएको कोड प्रविष्ट गर्नुहोस : +९८० ***२४८९',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,fontWeight: FontWeight.w400,
                    color: const Color(0xFF212121),
                  ),
                ),

                // ---------------- OTP Boxes ----------------
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildOtpBox(_pin1),
                    _buildOtpBox(_pin2),
                    _buildOtpBox(_pin3),
                    _buildOtpBox(_pin4),
                  ],
                ),

                const SizedBox(height: 12),
                Text(
                  '६०  सेकन्डमा कोड पुनः पठाउनुहोस्',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF212121),
                  ),
                ),

                const SizedBox(height: 200),

                // ---------------- Submit Button ----------------
               GestureDetector(
  onTap: () {
    
    Navigator.push(context, MaterialPageRoute(builder:(context)=>  Dashboard()));
  },
  child: Container(
    width: 408,
    height: 50,
    alignment: Alignment.center,               // text बीचमा
    decoration: BoxDecoration(
      color: const Color(0xFF1AB189),          // पुरानै हरियो रङ
      borderRadius: BorderRadius.circular(12),
    
    ),
    child: Text(
      'पेस गर्नुहोस्',
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  ),
),
 SizedBox(height: 10,),


                 GestureDetector(
  onTap: () {
    
    Navigator.push(context, MaterialPageRoute(builder:(context)=>  Dashboard()));
  },
  child: Container(
    width: 408,
    height: 50,
    alignment: Alignment.center,               // text बीचमा
    decoration: BoxDecoration(
      color: Colors.white10,          // पुरानै हरियो रङ
      borderRadius: BorderRadius.circular(12),
         border: Border.all(                    // किनार (border)
      color: Color(0xFF1AB189),            // तपाईंलाई मनपर्ने रङ
      width: 2,                            // मोटाइ (px)
    ),
    
    ),
    child: Text(
      'कोड पुन : पठाउनुहोस ',
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF212121),
      ),
    ),
  ),
),

            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
