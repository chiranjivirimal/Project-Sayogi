// ignore_for_file: unused_element_parameter

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Expensespopup extends StatelessWidget {
  const Expensespopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
        
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(color:  Colors.transparent,
            )
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: _ExpensesFormCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExpensesFormCard extends StatelessWidget {
  const _ExpensesFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width * 0.9;

    return Container(
      width: maxWidth < 360 ? maxWidth : 360,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'खर्च',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: const Color(0xFF222222),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 24),
          _buildField('साइट चयन गर्नुहोस', '[ साइट खोज्नुहोस ]'),
          const SizedBox(height: 16),
          _buildField('शीर्षक', 'शीर्षक लेख्नुहोस्'),
          const SizedBox(height: 16),
          _buildField('रकम', 'रु १,०००', keyboardType: TextInputType.number),
          const SizedBox(height: 16),
          _buildField('मिति', 'दिन/महिना/वर्ष'),
          const SizedBox(height: 16),
          _buildField('कैफियत', 'कैफियत लेख्नुहोस्', maxLines: 3),
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
                      color: const Color(0xFFE74C3C),
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

  Widget _buildField(String label, String hint, {int maxLines = 1, TextInputType? keyboardType}) {
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
