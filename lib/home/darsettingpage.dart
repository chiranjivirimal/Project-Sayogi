import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Darsettingpage extends StatelessWidget {
  const Darsettingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(
  preferredSize: const Size.fromHeight(120), // increased height
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'दर सेटिंग',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4), // small space between texts
                    Text(
                      'रानीपौवा १०, रामको घर', // 👈 new text here
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
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
      Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);

            
          },
          child: Container(
            height: 37,
            width: 80,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        

        // Or if you want to use an image asset
        // Image.asset('assets/your_icon.png', width: 20, height: 20),
        Image.asset('assets/settingpop.png', width:18 , height:18 ,),

        const SizedBox(width: 3), 

        const Text(
          "साइट",
          style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    ),
          ),
        ),
      ),

      const SizedBox(height: 20),

      // ... rest of your widgets unchanged
      _buildTextField('शीर्षक', 'प्रिमियर स्टील'),
      const SizedBox(height: 15),
      _buildTextField('मूल्य', 'रु ७००'),
      const SizedBox(height: 15),
      _buildTextField('एकाइ', '१'),
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
        width: double.infinity,
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
            hintText: 'प्रिमियर स्टील ८ मिलिमिटरको २५ ओटा रड',
            hintStyle: GoogleFonts.poppins(
              color: const Color(0xFF555555),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 56,
                width: double.infinity,
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
                width: double.infinity,
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
)

      

      
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
