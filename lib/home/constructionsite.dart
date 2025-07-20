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

      body: Stack(
        children: [
          
          SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 60), // leave space for button

              
                Container(
                  width: 408,
                  height: 52,
                  padding: const EdgeInsets.fromLTRB(5, 15, 10, 10),
                  margin: const EdgeInsets.fromLTRB(2, 40, 2, 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0x801AB189),
                      width: 2.0,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'साइट खोज्नुहोस्...',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// ✅ Site 1
                _buildSiteCard(
                  title: 'बिजयपुर साइट 1',
                  date: 'सुरु भएको वैशाख १',
                  statusText: 'सक्रिय',
                  statusColor: const Color(0xff1AB189),
                  statusBg: const Color(0xffE8F5E8),
                ),

                const SizedBox(height: 15),

                /// ✅ Site 2
                _buildSiteCard(
                  title: 'बिजयपुर साइट 2',
                  date: 'सुरु भएको वैशाख १',
                  statusText: 'प्रगतीमा',
                  statusColor: const Color(0xFFF6A612),
                  statusBg: const Color(0xFFFFF3CD),
                ),

                const SizedBox(height: 15),

                /// ✅ Site 3
                _buildSiteCard(
                  title: 'बिजयपुर साइट 3',
                  date: 'सुरु भएको वैशाख १',
                  statusText: 'सम्पन्न',
                  statusColor: const Color(0xff1AB189),
                  statusBg: const Color(0xffE8F5E8),
                ),

                const SizedBox(height: 15),

                /// ✅ Site 4
                _buildSiteCard(
                  title: 'बिजयपुर साइट 4',
                  date: 'सुरु भएको वैशाख १',
                  statusText: 'सक्रिय',
                  statusColor: const Color(0xff1AB189),
                  statusBg: const Color(0xffE8F5E8),
                ),
              ],
            ),
          ),

          
          Positioned(
            right: 15,
            top: 5, 
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nayasitenirman()),
                );
              },
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  color: const Color(0xFF186B97),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add, color: Colors.white, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      'नयाँ ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
  Widget _buildSiteCard({
    required String title,
    required String date,
    required String statusText,
    required Color statusColor,
    required Color statusBg,
  }) {
    return Container(
      height: 96,
      width: 408,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0x40000000), width: 1.0),
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
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xFF222222),
                  ),
                ),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF222222),
                  ),
                ),
                Container(
                  height: 22,
                  width: 60,
                  decoration: BoxDecoration(
                    color: statusBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    statusText,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: statusColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, size: 20),
          ],
        ),
      ),
    );
  }
}
