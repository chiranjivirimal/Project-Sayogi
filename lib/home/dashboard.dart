import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/colors/appcolors.dart';
import 'package:project_sayogi/home/aamdanikharchakarokarsite.dart';

import 'package:project_sayogi/home/notepage.dart';
import 'package:project_sayogi/home/notificationpage.dart';
import 'package:project_sayogi/home/profiledetailspage.dart';
import 'package:project_sayogi/home/constructionsite.dart';
import 'package:project_sayogi/home/partiharupage.dart';
import 'package:project_sayogi/home/sampadan_popup.dart';
import 'package:project_sayogi/home/timeperiodpicker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  String selectedMonth = 'कार्तिक';

  final List<String> months = [
    'बैशाख',
    'जेष्ठ',
    'अषाढ',
    'श्रावण',
    'भाद्र',
    'आश्विन',
    'कार्तिक',
    'मङ्सिर',
    'पुष',
    'माघ',
    'फागुन',
    'चैत्र',
  ];

  final List<Map<String, dynamic>> dashboardItems = [
    {
      'asset': 'assets/incomehome.png',
      'amount': 'रु १०,०००',
      'label': 'आम्दानि(बैशाख)',
      'boxColor': Color(0x401AB189),
    },
    {
      'asset': 'assets/expensehome.png',
      'amount': 'रु ५,०००',
      'label': 'खर्च (बैशाख)',
      'boxColor': Color(0xFFFAE6E7),
      'textColor': Color.fromARGB(255, 249, 7, 7),
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1AB189),
      body: SafeArea(
        child: Column(
          children: [
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18,
                            child: Text(
                              'U',
                              style: GoogleFonts.poppins(color: Colors.teal),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'विशाल रिमाल ',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                         
                        ],
                      ),
                    
                    Row(
  children: [
    
    InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const Notepage()),
      ),
      customBorder: const CircleBorder(),              
      child: Container(
        height: 30,
        width: 30,
        padding: const EdgeInsets.all(4),              
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFAFAFA) ,                              
        ),
        child: Image.asset(
          'assets/notetitle.png',
          width: 22,
          height: 22,
          color: Colors.black,                         
        ),
      ),
    ),

    const SizedBox(width: 20),

    
    InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const Notificationpage()),
      ),
      customBorder: const CircleBorder(),
      child: Container(
         height: 30,
        width: 30,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFAFAFA),
        ),
        child: Image.asset(
          'assets/notification1.png',
          width: 22,
          height: 22,
          color: Colors.black,
        ),
      ),
    ),
  ],
)



                    ],
                  ),
                ],
              ),
            ),

            
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // align left
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'नमस्कार, फेरि स्वागत छ !',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'शुभ बिहानी',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 36,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (var day in [
                                  '७  दिन ',
                                  '१५ दिन ',
                                  '३० दिन ',
                                ])
                                  SizedBox(
                                    width: 80,
                                    height: 33,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.secondary,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: AppColors.secondary,
                                        ),
                                      ),
                                      child: Text(
                                        day,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.teal),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'पूर्ण विवरण ',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                        
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: dashboardItems.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, 
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                    mainAxisExtent:
                                        150, 
                                  ),
                              itemBuilder: (context, index) {
                                final item = dashboardItems[index];

                                return Container(
                                  width: 194,
                                  height: 134,
                                  decoration: BoxDecoration(
                                    color: item['boxColor'],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0x38222222),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                    
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                          Image.asset(
      item['asset'],
      width: 28,
      height: 28,
      fit: BoxFit.contain,
    ),

                                        const SizedBox(height: 12),
                                        Text(
                                          item['amount'],
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                item['textColor'] ??
                                                const Color(0xFF1AB189),
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
                          ),
                          SizedBox(height: 30),

                          
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'सटकर्टहरु ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder:
                                          (BuildContext context) =>
                                              SampadanMenuPopup(),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                    GestureDetector(
  onTap: () {
    // Your edit action here
  },
  child: Image.asset(
    'assets/edit.png',
    width: 24,
    height: 24,
    color: Color(0xFF1AB189),
  ),
),

                                      SizedBox(width: 5),
                                      Text(
                                        'एडिट मेनु ',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.primary,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: GridView.count(
                              crossAxisCount: 3,
                              crossAxisSpacing: 40,
                              mainAxisSpacing: 40,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ShortcutIcon(
                                  icon: Icons.person_add,
                                  label: 'पार्टी थप्नुहोस्',
                                ),
                                ShortcutIcon(
                                  icon: Icons.build,
                                  label: 'साइट डिजाइन',
                                ),
                                ShortcutIcon(
                                  icon: Icons.money,
                                  label: 'भुक्तानी भित्र ',
                                ),
                                ShortcutIcon(
                                  icon: Icons.download,
                                  label: 'भुक्तानी बाहिर',
                                ),
                                ShortcutIcon(
                                  icon: Icons.person,
                                  label: 'सम्पत्ति ',
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 30),

                          // Shortcut Section
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'हालैका गतिबिधिहरु  ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder:
                                          (BuildContext context) =>
                                              TimePeriodPicker(),
                                    );
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 35,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFF1AB189),
                                      ),
                                      borderRadius: BorderRadius.circular(8),

                                      color: Color(0xFF1AB189),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                       GestureDetector(
  onTap: () {
    
  },
  child: Image.asset(
    'assets/filtericon1.png',
    width: 13,
    height: 15,
    color: Color(0xFFFFFFFF),
  ),
),

                                        SizedBox(width: 6),
                                        Text(
                                          'छान्नुहोस',
                                          style: GoogleFonts.poppins(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 412,
                            height: 106,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Left Column - All left texts
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'सामान किन्न',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF000000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'आम्दानी',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ०००',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF1AB189),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                // Right Column - All right texts
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      width: 65,
                                      height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAFAFA),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color(0x76000000),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        'आज',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
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
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू २,०००',
                                      style: TextStyle(
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
                          SizedBox(height: 5),
                          Container(
                            width: 412,
                            height: 106,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'तलब',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF000000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'आम्दानी',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ६०,०००',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF1AB189),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                              
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      width: 65,
                                      height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAFAFA),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color(0x76000000),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        'जेठ १५ ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
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
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ० ',
                                      style: TextStyle(
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

                          SizedBox(height: 5),
                          Container(
                            width: 412,
                            height: 106,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Left Column - All left texts
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'सामान किन्न',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF000000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'आम्दानी',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ०',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF1AB189),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                // Right Column - All right texts
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      width: 65,
                                      height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAFAFA),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color(0x76000000),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        'जेठ ३० ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
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
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू १५ ,०००',
                                      style: TextStyle(
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

                          SizedBox(height: 5),
                          Container(
                            width: 412,
                            height: 106,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Left Column - All left texts
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'सामान किन्न',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF000000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'आम्दानी',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू १,०००',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF1AB189),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                              
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      width: 65,
                                      height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAFAFA),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color(0x76000000),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        'असार ५ ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
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
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ८ ,००',
                                      style: TextStyle(
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

                          SizedBox(height: 5),
                          Container(
                            width: 412,
                            height: 106,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'काम सम्पन्न ',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF000000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'आम्दानी',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ९०,०००',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Color(0xFF1AB189),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                              
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      width: 65,
                                      height: 22,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAFAFA),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color(0x76000000),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        'जेठ १५ ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
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
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'रू ० ',
                                      style: GoogleFonts.poppins(
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
                          SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Aamdanikharchasite(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 109,
                                  height: 42,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF186B97),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'थप हेर्नुहोस',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ), 
                                      const Icon(
                                        Icons
                                            .arrow_right_alt, 
                                        size: 18,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 20,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'आय ब्याय विवरण  ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 407,
                            height: 427,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Color(0x38000000)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "महिना छान्नुहोस",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),

                               
                                    Container(
                                     
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFAFAFA),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 40,
                                      width: 120,

                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2<String>(
                                          isExpanded: true,
                                          value: selectedMonth,

                                          items:
                                              months
                                                  .map(
                                                    (m) => DropdownMenuItem<
                                                      String
                                                    >(value: m, child: Text(m)),
                                                  )
                                                  .toList(),
                                          onChanged:
                                              (value) => setState(
                                                () => selectedMonth = value!,
                                              ),

                                         
                                          buttonStyleData: const ButtonStyleData(
                                            height: 40,
                                            width: 120,
                                            padding:
                                                EdgeInsets
                                                    .zero, 
                                            decoration:
                                                BoxDecoration(), 
                                          ),

                                          dropdownStyleData: DropdownStyleData(
                                            maxHeight: 220,
                                            width: 120,
                                            offset: const Offset(
                                              0,
                                              0,
                                            ), 
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            padding: EdgeInsets.zero,
                                            elevation: 4,
                                          ),

                                          menuItemStyleData:
                                              const MenuItemStyleData(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 12,
                                                ),
                                              ),

                                          iconStyleData: const IconStyleData(
                                            icon: Icon(Icons.arrow_drop_down),
                                            iconSize: 24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40),
                                Image.asset('assets/bar.png'),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Text(
                                      'कार्तिक ',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'रु. ५,०००',
                                              style: GoogleFonts.poppins(
                                                color: Color(0xFF10B981),
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'आम्दानी',
                                              style: GoogleFonts.poppins(
                                                color: Color(0xFF555555),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 30),
                                        Column(
                                          children: [
                                            Text(
                                              'रु. ३,०००',
                                              style: GoogleFonts.poppins(
                                                color: Color(0xFFEF4444),
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'खर्च',
                                              style: GoogleFonts.poppins(
                                                color: Color(0xFF555555),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 30),
                                        Column(
                                          children: [
                                            Text(
                                              'रु. २,०००',
                                              style: GoogleFonts.poppins (
                                                color: Color(0xFFEF4444),
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'ब्यालेन्स',
                                              style: GoogleFonts.poppins(
                                                color: Color(0xFF555555),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      
    bottomNavigationBar: SizedBox(
  width: 440,
  height: 82, 
  child: ClipRRect(
    child: BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() => currentIndex = index);

        if (index == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Constructionsite()));
        } else if (index == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Aamdanikharchasite()));
        } else if (index == 3) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Partiharupage()));
        } else if (index == 4) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const ProfileDetailsPage()));
        }
      },

      
      items: List.generate(5, (i) {
        const imagePaths = [
          'assets/homeg.jpeg',
          'assets/site.png',
          'assets/karobar.png',
          'assets/partiharu.png',
          'assets/maindash.png',
        ];

        const labels = [
          'होम',
          'साइट',
          'कारोबार',
          'पार्टीहरु',
          'अरु',
        ];

        final bool isSelected = currentIndex == i;

        return BottomNavigationBarItem(
          label: '',
          icon: SizedBox(
            width: 72,
            height: 56,             
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePaths[i],
                  height: 32,          
                  width: 32,           
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 4),
                Text(
                  labels[i],
                  style: GoogleFonts.poppins (
                    fontSize: 12,fontWeight: FontWeight.w400,
                    color: isSelected
                        ? const Color(0xFF10B981) 
                        : const Color(0xFF555555),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    
    ),
  ),
),






    );
  }
}

class ShortcutIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const ShortcutIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Color(0x381AB189),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 28, color: Color(0xFF1AB189)),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.poppins(fontSize: 14, color: Color(0xFF555555)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
