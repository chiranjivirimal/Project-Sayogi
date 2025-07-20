import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nayaghardhanipopup extends StatelessWidget {
  const Nayaghardhanipopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent, 
      insetPadding: const EdgeInsets.all(16),
      child: Center(
        child: Container(
          width: 360,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'नयाँ घरधनी थप्नुहोस्',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),

              // ✅ 3 Input Boxes
              _buildInputBox(hint: 'घरधनीको नाम'),
              const SizedBox(height: 16),
              _buildInputBox(hint: 'ठेगाना'),
              const SizedBox(height: 16),
              _buildInputBox(
                hint: 'फोन नम्बर',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),

              // ✅ Buttons Row
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // 👉 Add save logic here
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
                          'रद्द गर्नुहोस्',
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
        ),
      ),
    );
  }

  /// ✅ Only Hint & Box (No Label)
  Widget _buildInputBox({required String hint, TextInputType? keyboardType}) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color(0xFF555555),
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color(0xFFF9F9F9),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF1AB189)),
        ),
      ),
    );
  }
}
