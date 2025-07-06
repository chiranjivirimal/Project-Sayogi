import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Samankinna extends StatefulWidget {
  const Samankinna({super.key});

  @override
  State<Samankinna> createState() => _NayaSiteNirmanState();
}

class _NayaSiteNirmanState extends State<Samankinna> {
 

  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      // ─── custom app-bar ────────────────────────────────────────────────
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
                    // back arrow
                    IconButton(
                      icon: const Icon(Icons.arrow_back,
                          size: 32, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    // centred title
                    Expanded(
                      child: Center(
                        child: Text(
                          'सामान किन्न ',
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
      

      // ─── page body ────────────────────────────────────────────────────
      // ─── page body ────────────────────────────────────────────────────
body: SingleChildScrollView(
  
  
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 15),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ▶ सुधारिएको Container
      
      Column(
        
        children: [
      
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Container(
                width: 80,
                height: 33,
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                decoration: BoxDecoration(
                  color: Color(0xFF186B97),
                  borderRadius: BorderRadius.circular(15),
                 
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     const SizedBox(width: 3),              // space between text & icon
      const Icon(
        Icons.edit,               // right-arrow icon
        size: 12,
        color: Color(0xFFFFFFFF),
      ),
                
                Text('सम्पादन  ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xFFFFFFFF), 
                    fontWeight: FontWeight.w600),
                ),
                 
               ],
             ),
              ),
           SizedBox(width: 6,),
              Container(
                width: 80,
                height: 33,
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4F4F),
                  borderRadius: BorderRadius.circular(15),
                 
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     const SizedBox(width: 3),              // space between text & icon
      const Icon(
        Icons.delete,               // right-arrow icon
        size: 12,
        color: Color(0xFFFFFFFF),
      ),
                
                Text('मेटाउनुहोस  ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xFFFFFFFF), 
                    fontWeight: FontWeight.w600),
                ),
                 
               ],
             ),
              ),
            ]),
         ],
       ),

       SizedBox(height: 30),

// एउटै Padding – heading र container दुवैका लागि
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ---------- Heading ----------
      Text(
        'मुग्लिन - पोखरा सडक साइट',
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Color(0xFF222222),
          fontWeight: FontWeight.w600,
        ),
      ),

      SizedBox(height: 20),

      // ---------- Details Card ----------
      Container(
        width: 408,            // तपाईंको पुरानै निश्चित चौडाइ
        height: 171,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0x38000000)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1: रकम | रु १,०००
            Row(
              children: [
                Text(
                  'रकम',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),          // ↔︎ fixed gap
                Text(
                  'रु १,०००',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFF4F4F),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 2: मिती | असार १५
            Row(
              children: [
                Text(
                  'मिती',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'असार १५',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 3: कैफियत | केहि लेख्नुहोस
            Row(
              children: [
                Text(
                  'कैफियत',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'केहि लेख्नुहोस',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
),


SizedBox(height: 30),

// एउटै Padding – heading र container दुवैका लागि
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ---------- Heading ----------
      Text(
        'नारायणघाट - बुटवल सडक साइट',
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Color(0xFF222222),
          fontWeight: FontWeight.w600,
        ),
      ),

      SizedBox(height: 20),

      // ---------- Details Card ----------
      Container(
        width: 408,            // तपाईंको पुरानै निश्चित चौडाइ
        height: 171,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0x38000000)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1: रकम | रु १,०००
            Row(
              children: [
                Text(
                  'रकम',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),          // ↔︎ fixed gap
                Text(
                  'रु १,०००',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFF4F4F),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 2: मिती | असार १५
            Row(
              children: [
                Text(
                  'मिती',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'असार १५',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 3: कैफियत | केहि लेख्नुहोस
            Row(
              children: [
                Text(
                  'कैफियत',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'केहि लेख्नुहोस',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
),

       
SizedBox(height: 30),

// एउटै Padding – heading र container दुवैका लागि
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ---------- Heading ----------
      Text(
        'मुग्लिन - काठमाण्डौं  सडक साइट',
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Color(0xFF222222),
          fontWeight: FontWeight.w600,
        ),
      ),

      SizedBox(height: 20),

      // ---------- Details Card ----------
      Container(
        width: 408,            // तपाईंको पुरानै निश्चित चौडाइ
        height: 171,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0x38000000)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1: रकम | रु १,०००
            Row(
              children: [
                Text(
                  'रकम',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),          // ↔︎ fixed gap
                Text(
                  'रु १,०००',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFF4F4F),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 2: मिती | असार १५
            Row(
              children: [
                Text(
                  'मिती',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'असार १५',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 3: कैफियत | केहि लेख्नुहोस
            Row(
              children: [
                Text(
                  'कैफियत',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'केहि लेख्नुहोस',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
),




 ] ),
  ),

  
      ),);
    
  
    
  }
}
