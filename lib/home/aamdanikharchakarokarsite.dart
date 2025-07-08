import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/home/expensespopup.dart';
import 'package:project_sayogi/home/incomepopup.dart';
import 'package:project_sayogi/home/samankinna.dart';

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

  @override
  Widget build(BuildContext context) {
    final _ = dashboardItems.take(2).toList();
    
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

      // ─── page body ────────────────────────────────────────────────────
      // ─── page body ────────────────────────────────────────────────────
body: SingleChildScrollView(
  padding: const EdgeInsets.all(12),
child:  Column(
  
    
          
          
        
                 // (पहिलेको जस्तै)
        
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1️⃣ दुई-बक्स ग्रिड
          GridView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  itemCount: dashboardItems.length,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,     // एउटै पङ्क्तिमा 2 टाइल
    mainAxisSpacing: 20,
    crossAxisSpacing: 20,
    mainAxisExtent: 150,   // हरेक टाइल 150px अग्लो
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
          color: Color(0x38222222)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(                       // ↙ अब Row होइन Column
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(                             // ⬆️  आइकन माथि
                 (Icons.attach_money),
                          // Dollar sign
    
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
SizedBox(height: 15,),
  Container(
  width: 411,
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
    mainAxisAlignment: MainAxisAlignment.center, // vertical centering
    children: [
      Text(
        'कुल मौज्दात',
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF222222),
        ),
      ),
      const SizedBox(height: 4),                // small gap between lines
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


            
          
        
      


      SizedBox(height: 30,),
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
                  color: Color(0xFF1AB189),
                  borderRadius: BorderRadius.circular(8),
                 
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     const SizedBox(width: 3),              // space between text & icon
      const Icon(
        Icons.filter_list,               // right-arrow icon
        size: 12,
        color: Color(0xFFFFFFFF),
      ),
                
                Text('छान्नुहोस ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xFFFFFFFF), 
                    fontWeight: FontWeight.w600),
                ),
                 
               ],
             ),
              ),
            ]),
         ],
       ),
        
      
      

        
  

    

        // 6️⃣ पुनः खाली ठाउँ—पछि अरू सामग्री थप्न सजिलो
  SizedBox(height: 20),
  GestureDetector(
    onTap: () {
      Navigator.push(context, 
      MaterialPageRoute(builder: (_) => Samankinna()),
      );
    },
  
     child:    Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
)
  ),
  
SizedBox(height: 10,),
Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
),
SizedBox(height: 10,),
Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
),
SizedBox(height: 10,),
Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
),
SizedBox(height: 10,),
Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
),
SizedBox(height: 10,),
Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
),
SizedBox(height: 10,),
Container(
  width: 412,
  height: 106,
  margin:  EdgeInsets.symmetric(horizontal: 5),
  padding:  EdgeInsets.all(16),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('तलब', 
            style: GoogleFonts.poppins(
              color: Color(0xFF000000), 
              fontSize: 17, 
              fontWeight: FontWeight.bold)),
          Text('आम्दानी', 
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ६०,०००', 
            style: TextStyle(
              fontSize: 16, 
              color: Color(0xFF1AB189), 
              fontWeight: FontWeight.bold)),
        ],
      ),
      
      // Right Column - All right texts
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Container(
            width: 65,
            height: 22,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0x76000000), 
                width: 1),
            ),
            child: Text('जेठ १५ ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF555555), 
                fontWeight: FontWeight.bold),
            ),
          ),
          Text('खर्च',
            style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Color(0xFF555555), 
              fontWeight: FontWeight.bold)),
          Text('रू ० ',
            style: TextStyle(
              fontSize: 14, 
              color: Color(0xFFFF4F4F), 
              fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  ),
),

       
      
   ]
    ),
  ),
  

    bottomNavigationBar: SafeArea(child: Column(
      mainAxisSize: MainAxisSize.min,

    
      
               
          children: [
            Padding(padding: 
            const EdgeInsets.fromLTRB(20, 4, 20, 8),
            child: 
        
        
              Row(
                
                children: [
                   GestureDetector(
  onTap: () {
    showDialog(
      context: context,
      builder: (BuildContext context) => Incomepopupscreen(),
    );
  },
  child:
                  
                
                Container(
      
                  height: 56,
                  width: 178,
                   decoration: BoxDecoration(
                      color:  Color(0xFF186B97),
                      border: Border.all(color:  Color.fromARGB(255, 243, 240, 240)),
                      
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.money_off_sharp, size: 20,color: Colors.white),
                        SizedBox(width: 7,),
                         Text(
                            ' आम्दानी थप्नुहोस  ',
                            style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600,
                              
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                      ]
                    )
                        
                    ),
                  ),
                   ),
                  SizedBox(width: 10,),
                   GestureDetector(
  onTap: () {
    showDialog(
      context: context,
      builder: (BuildContext context) => Expensespopup(),
    );
  },
  child:
                  Container(
      
                  height: 56,
                  width: 178,
                   decoration: BoxDecoration(
                      color: Color(0xFFE74C3C),
                      border: Border.all(color:  Color.fromARGB(255, 243, 240, 240)),
                      
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                       Icon(Icons.money_off_sharp, size: 20, color: Colors.white, ),
                        SizedBox(width: 8,),
                         Text(
                            'खर्च थप्नुहोस ',
                            style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600,
                              
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                      ]
                    )
                        
                    ),
                  ),
                   )
                 
                ]

              ),
    )]
        )
      ) );
    
  
    
  }
}
