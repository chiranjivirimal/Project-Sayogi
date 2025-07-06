import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/colors/appcolors.dart';
import 'package:project_sayogi/home/aamdanikharchasite.dart';
import 'package:project_sayogi/home/dashboardpage.dart';
import 'package:project_sayogi/home/engineerpage.dart';
import 'package:project_sayogi/home/profilepage.dart';
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
      'amount': 'रु १०,०००',
      'label': 'आम्दानि(बैशाख)',
      'boxColor': Color(0x401AB189),
    },
    {
      'amount': 'रु ५,०००',
      'label': 'खर्च (बैशाख)',
      'boxColor': Color(0xFFFAE6E7),
      'textColor': Color.fromARGB(255, 249, 7, 7),
    },
    {
      'amount': 'रु १५,०००',
      'label': 'लिन बाकि ',
      'boxColor': Color(0xFFFFFFFF),
      'textColor': Color.fromARGB(255, 15, 15, 15),
    },
    {
      'amount': 'रु ८,५००',
      'label': 'दिन बाकि ',
      'boxColor': Color(0xFFFFFFFF),
      'textColor': Color.fromARGB(255, 20, 19, 19),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1AB189),
      body: SafeArea(
        child: Column(
          children: [
            // ✅ Fixed Header Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Row
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
                          SizedBox(width: 4),
                          Icon(Icons.keyboard_arrow_down, color: Colors.white),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.white),
                          SizedBox(width: 20),
                          Icon(Icons.note, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ✅ Scrollable Content Below Header
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // the two text just below the top bar
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

                          // GridView Section
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: dashboardItems.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, // एउटै पङ्क्तिमा 2 टाइल
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                    mainAxisExtent:
                                        150, // हरेक टाइल 150px अग्लो
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
                                      // ↙ अब Row होइन Column
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          // ⬆️  आइकन माथि
                                          (Icons.attach_money),

                                          // Dollar sign
                                          size: 28,
                                          color:
                                              item['textColor'] ?? Colors.black,
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
                                      Icon(
                                        Icons.edit_document,
                                        color: Color(0xFF1AB189),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'सम्पादन मेनु ',
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
                                        Icon(
                                          Icons.filter_2,
                                          color: Colors.white,
                                          size: 14,
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
                                // Left Column - All left texts
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
                                // Left Column - All left texts
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
                                      ), // space between text & icon
                                      const Icon(
                                        Icons
                                            .arrow_right_alt, // right-arrow icon
                                        size: 18,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Income/Expense Section
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

                                    // ...
                                    Container(
                                      // You can drop this wrapper if you prefer to style via ButtonStyleData only.
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

                                          // ─── MENU ITEMS ───
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

                                          // ─── NEW STYLE OBJECTS (v 2.x) ───
                                          buttonStyleData: const ButtonStyleData(
                                            height: 40,
                                            width: 120,
                                            padding:
                                                EdgeInsets
                                                    .zero, // Container already has padding
                                            decoration:
                                                BoxDecoration(), // Use outer Container’s decoration
                                          ),

                                          dropdownStyleData: DropdownStyleData(
                                            maxHeight: 220,
                                            width: 120,
                                            offset: const Offset(
                                              0,
                                              0,
                                            ), // same as old dropdownOffset
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
                                              style: TextStyle(
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
                                              style: TextStyle(
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
                                              style: TextStyle(
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

      // ✅ Bottom Navigation Bar
      bottomNavigationBar: Container(
        width: 440,
        height: 85,
        decoration: BoxDecoration(
          color: Color(0xFF186B97),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          child: BottomNavigationBar(
            backgroundColor: AppColors.secondary,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0, // Prevent label spacing from affecting layout
            unselectedFontSize: 0,
            selectedIconTheme: IconThemeData(size: 28),
            unselectedIconTheme: IconThemeData(size: 26),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });

              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EngineerPage()),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aamdanikharchasite()),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              } else if (index == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboardpage()),
                );
              }
            },

            items: List.generate(5, (i) {
              IconData icon =
                  [
                    Icons.home,
                    Icons.engineering,
                    Icons.bar_chart,
                    Icons.person,
                    Icons.dashboard,
                  ][i];

              return BottomNavigationBarItem(
                icon: Container(
                  alignment: Alignment.center,
                  width: 57, // fixed width
                  height: 44, // fixed height to avoid vertical movement
                  decoration:
                      currentIndex == i
                          ? BoxDecoration(
                            color: Colors.teal,
                            shape: BoxShape.circle,
                          )
                          : null,
                  child: Icon(
                    icon,
                    size: 32, // ensure size is consistent
                    color: Colors.white,
                  ),
                ),
                label: "",
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
