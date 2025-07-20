import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'incomepopup.dart';
import 'expensespopup.dart';
import 'samankinna.dart'; // Make sure you have this page in your project

class Aamdanikharchasite extends StatefulWidget {
  const Aamdanikharchasite({super.key});

  @override
  State<Aamdanikharchasite> createState() => _NayaSiteNirmanState();
}

class _NayaSiteNirmanState extends State<Aamdanikharchasite> {
  final List<Map<String, dynamic>> dashboardItems = [
    {
      'amount': 'रु १०,०००',
      'label': 'आम्दानि(बैशाख)',
      'boxColor': const Color(0x401AB189),
    },
    {
      'amount': 'रु ५,०००',
      'label': 'खर्च (बैशाख)',
      'boxColor': const Color(0xFFFAE6E7),
      'textColor': const Color.fromARGB(255, 249, 7, 7),
    },
  ];

  final List<Map<String, dynamic>> records = List.generate(10, (index) {
    return {
      'title': 'तलब',
      'type': 'आम्दानी',
      'amount': 'रू ६०,०००',
      'date': 'जेठ १५',
      'expense': 'रू ०'
    };
  });

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
                          'आम्दानी खर्च साइट',
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
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dashboardItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: 150,
              ),
              itemBuilder: (context, index) {
                final item = dashboardItems[index];
                return Container(
                  decoration: BoxDecoration(
                    color: item['boxColor'],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0x38222222)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 28,
                          color: item['textColor'] ?? Colors.black,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          item['amount'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: item['textColor'] ?? const Color(0xFF1AB189),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['label'],
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 77,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0x80186B97),
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'कुल मौज्दात',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF222222),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'रू १०,००,०००',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF186B97),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 33,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1AB189),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.filter_list,
                        size: 16,
                        color: Colors.white,
                      ),
                      Text(
                        'छान्नुहोस ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: records.length,
              itemBuilder: (context, index) {
                final item = records[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Samankinna()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 106,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0x38000000)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'],
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item['type'],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color(0xFF555555),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item['amount'],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(0xFF1AB189),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 65,
                              height: 22,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFAFAFA),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: const Color(0x76000000),
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                item['date'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF555555),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'खर्च',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color(0xFF555555),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item['expense'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFF4F4F),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 4, 20, 12),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierColor: Colors.black12,
                      builder: (context) => const Incomepopupscreen(),
                    );
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFF186B97),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(255, 243, 240, 240)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.money_off_sharp,
                              size: 20, color: Colors.white),
                          const SizedBox(width: 7),
                          Text(
                            ' आम्दानी थप्नुहोस  ',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierColor: Colors.transparent,
                      builder: (context) => const Expensespopup(),
                    );
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE74C3C),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(255, 243, 240, 240)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.money_off_sharp,
                              size: 20, color: Colors.white),
                          const SizedBox(width: 8),
                          Text(
                            'खर्च थप्नुहोस ',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
