import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Incomepopupscreen extends StatelessWidget {
  const Incomepopupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(color: Colors.transparent),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: _IncomeFormCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class _IncomeFormCard extends StatefulWidget {
  // ignore: unused_element_parameter
  const _IncomeFormCard({super.key});

  @override
  State<_IncomeFormCard> createState() => _IncomeFormCardState();
}

class _IncomeFormCardState extends State<_IncomeFormCard> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width * 0.9;

    return Container(
      width: maxWidth < 360 ? maxWidth : 360,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'आम्दानी',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 24),
          _buildLabeledField(label: 'साइट चयन गर्नुहोस', hint: '[ साइट खोज्नुहोस ]'),
          const SizedBox(height: 16),
          _buildLabeledField(label: 'शीर्षक', hint: 'शीर्षक लेख्नुहोस्'),
          const SizedBox(height: 16),
          _buildLabeledField(label: 'रकम', hint: 'रु १,०००', keyboardType: TextInputType.number),
          const SizedBox(height: 16),
          _buildLabeledField(label: 'मिति', hint: 'दिन/महिना/वर्ष'),
          const SizedBox(height: 16),
          _buildLabeledField(label: 'कैफियत', hint: 'कैफियत लेख्नुहोस्', maxLines: 3),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 42,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1AB189),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'थप्नुहोस्',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height: 42,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD1D5DB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'रद्द गर्नुहोस ',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF222222),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLabeledField({
    required String label,
    required String hint,
    int maxLines = 1,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          maxLines: maxLines,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF000000)),
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0x38000000)),
            ),
          ),
        ),
      ],
    );
  }
}
