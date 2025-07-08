import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/auth/verifyotp.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();

  Future<void> _sendOtp(String phone) async {
    final url = Uri.parse(
      'https://7fcf-2400-1a00-bde0-6cc8-6d31-8c8-abef-9f68.ngrok-free.app/api/login',
    );

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phone': phone}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final userId = data['user_id'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (_) => OtpVerifyScreen(userId: userId.toString(), phone: phone),
          ),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('OTP पठाउन असफल भयो')));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('सर्भर समस्या: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),

                Center(
                  child: Image.asset(
                    'assets/mainlogo.png',
                    height: 162,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 60),

                Text(
                  'स्वागत छ',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF222222),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'आफ्नो खाता सुचारु गर्न लग‑इन गर्नुहोस् !',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF888888),
                  ),
                ),

                const SizedBox(height: 40),

                Text(
                  'फोन नम्बर',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF222222),
                  ),
                ),
                const SizedBox(height: 6),
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '+977 9800000000',
                    prefixIcon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),

                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    final phone = _phoneController.text.trim();

                    if (phone.isEmpty || phone.length < 10) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('कृपया मान्य फोन नम्बर लेख्नुहोस्'),
                        ),
                      );
                      return;
                    }

                    _sendOtp(phone);
                  },
                  child: Container(
                    height: 50,
                    width: 407,
                    decoration: BoxDecoration(
                      color: Color(0xFF1AB189),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'लगइन',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
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
