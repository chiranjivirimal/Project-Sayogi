import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:project_sayogi/home/dashboard.dart'; // pubspec.yaml मा google_fonts dependency थप्नुहोस्
// (यदि माथिको ग्राफिक आइकन चाहिन्थ्यो भने: import 'package:font_awesome_flutter/font_awesome_flutter.dart';)

class OtpVerifyScreen extends StatefulWidget {
  final String userId;
  final String phone;
  const OtpVerifyScreen({Key? key, required this.userId, required this.phone})
    : super(key: key);

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final _pin1 = TextEditingController();
  final _pin2 = TextEditingController();
  final _pin3 = TextEditingController();
  final _pin4 = TextEditingController();

  // ✅ New method to verify OTP
  Future<void> _verifyOtp(String otp) async {
    final url = Uri.parse(
      'https://7fcf-2400-1a00-bde0-6cc8-6d31-8c8-abef-9f68.ngrok-free.app/api/verify-otp',
    );

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'user_id': widget.userId, 'otp': otp}),
      );

      if (response.statusCode == 200) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Dashboard()),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('OTP मिलेन')));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('सर्भर समस्या: $e')));
    }
  }

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
        style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
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

                SizedBox(height: 20),
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
                  'हामीले पठाएको कोड प्रविष्ट गर्नुहोस : ${widget.phone}',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
                // ✅ SUBMIT OTP
                InkWell(
                  onTap: () {
                    final otp =
                        _pin1.text + _pin2.text + _pin3.text + _pin4.text;
                    if (otp.length == 4) {
                      _verifyOtp(otp);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('OTP पूरा गर्नुहोस्')),
                      );
                    }
                  },
                  child: Container(
                    width: 408,
                    height: 50,
                    alignment: Alignment.center, // text बीचमा
                    decoration: BoxDecoration(
                      color: const Color(0xFF1AB189), // पुरानै हरियो रङ
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
                const SizedBox(height: 10),

                Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xFF1AB189), width: 2),
                  ),
                  child: Container(
                    width: 408,
                    height: 50,
                    alignment: Alignment.center, // text बीचमा
                    decoration: BoxDecoration(
                      color: Colors.white10, // पुरानै हरियो रङ
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        // किनार (border)
                        color: Color(0xFF1AB189), // तपाईंलाई मनपर्ने रङ
                        width: 2, // मोटाइ (px)
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
