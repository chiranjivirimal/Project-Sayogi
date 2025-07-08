// pages/EngineerPage.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/home/nayasitenirman.dart';

class Constructionsite extends StatelessWidget {
  const Constructionsite({super.key});

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
                          'साइटहरु ',
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
        padding: const EdgeInsets.all(15),
        child: Column(
        children : [
          SafeArea(
          child: Column(
            children: [
            Container(
  // ── manual size ────────────────────────────────────────────────
  width: 408,          // e.g. any fixed width, or use double.infinity
  height: 52,          // must be large enough for the field + padding

  // ── manual padding (previously a separate Padding widget) ──────
  padding: const EdgeInsets.fromLTRB(5, 15, 10, 10),

  // optional outer spacing; use margin if you still need the
  // “50 px from top, 15 px from bottom” displacement
  margin: const EdgeInsets.fromLTRB(2, 40, 2, 10),

  // ── visual style handled by the container itself ───────────────
  decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.circular(30),
    border: Border.all(
      color: const Color(0x801AB189),
      width: 2.0,
    ),
  ),

  // ── the input field ────────────────────────────────────────────
  child: TextField(
    decoration: InputDecoration(
      // remove internal fill/borders so we don’t double‑draw them
      border: InputBorder.none,
      hintText: 'साइट खोज्नुहोस्...',
      hintStyle: const TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      prefixIcon: const Icon(Icons.search),
    ),
  ),
),

              SizedBox(height: 20),
              Container(
                height: 96,
                width: 408,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0x40000000), width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                        children: [
                          Text(
                            'बिजयपुर साइट 1',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Text(
                            "सुरु भएको वैशाख १",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Container(
                            height: 22,
                            width: 54,
                            decoration: BoxDecoration(
                              color: Color(0xffE8F5E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'सक्रिय',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff1AB189),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 96,
                width: 408,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0x40000000), width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                        children: [
                          Text(
                            'बिजयपुर साइट 2',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Text(
                            "सुरु भएको वैशाख १",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Container(
                            height: 22,
                            width: 59,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF3CD),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'प्रगतीमा',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFF6A612),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 96,
                width: 408,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0x40000000), width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                        children: [
                          Text(
                            'बिजयपुर साइट 3',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Text(
                            "सुरु भएको वैशाख १",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Container(
                            height: 22,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffE8F5E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'सम्पन्न',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff1AB189),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
               Container(
                height: 96,
                width: 408,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0x40000000), width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                        children: [
                          Text(
                            'बिजयपुर साइट 4',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Text(
                            "सुरु भएको वैशाख १",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF222222),
                            ),
                          ),
                          Container(
                            height: 22,
                            width: 54,
                            decoration: BoxDecoration(
                              color: Color(0xffE8F5E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'सक्रिय',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff1AB189),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          top: -5,
          child:GestureDetector(
            onTap: () {
              // Navigate to the Add Construction Site page
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Nayasitenirman()));
            },
            child: Container(
            height: 30,
            width: 74,
            decoration: BoxDecoration(
              color: Color(0xFF186B97),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.add, color: Colors.white, size: 20),
                SizedBox(width: 5),
                Text(
                  'नयाँ ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            
                    ),
          ) )
        ]
      ),
       )
    );
  }
}

// pages/ChartPage.dart

