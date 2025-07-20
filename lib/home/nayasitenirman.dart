import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/home/darsettingpage.dart';
import 'package:project_sayogi/home/nayaghardhanipopup.dart';

class Nayasitenirman extends StatelessWidget {
  const Nayasitenirman({super.key});

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
                          'नयाँ साइट निर्माण ',
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
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField('साइटको नाम', 'रानीपौवा १०, रामको घर '),
            const SizedBox(height: 15),
            _buildTextField('ठेगाना', 'वडा नम्बर ९'),
            const SizedBox(height: 15),

            Text(
              'घरधनीको नाम ',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xFF222222),
              ),
            ),
            const SizedBox(height: 5),

            // ✅ Updated with showDialog instead of Navigator.push
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        border: InputBorder.none,
                        hintText: 'घरधनी छान्नुहोस्',
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        barrierColor: Colors.transparent, // ✅ no blur or white bg
                        builder: (context) => const Nayaghardhanipopup(),
                      );
                    },
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1AB189),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),

            _buildTextField('सुरु मिति', '२०८२/०५/०५'),
            const SizedBox(height: 15),
            _buildTextField('समाप्ति मिति', '२०८२/०६/१५'),
            const SizedBox(height: 15),
            _buildTextField('अनुमानित बजेट', '५० लाख रुपैयाँ'),
            const SizedBox(height: 15),

            Text(
              'विवरण',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xFF222222),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 93,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'साइटको अवस्थाको बारे टुक्रा जानकारी प्रविष्ट गर्नुहोस्।',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xFF555555),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            Text(
              'साइट सम्बन्धित फोटो',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xFF222222),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 131,
              width: 374,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.image,
                        size: 40, color: Color(0xFF1AB189)),
                    const SizedBox(height: 5),
                    Text(
                      'फोटो अपलोड गर्नुहोस्',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF555555),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            _buildTextField('स्थिति', 'प्रारम्भिक अवस्था'),
            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const Darsettingpage()),
);

                    },
                    child: Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFF186B97),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'साइट निर्माण गर्नुहोस्',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE74C3C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'रद्द गर्नुहोस्',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xFF222222),
          ),
        ),
        const SizedBox(height: 11),
        Container(
          height: 56,
          width: 409,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: GoogleFonts.poppins(
                color: const Color(0xFF555555),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
