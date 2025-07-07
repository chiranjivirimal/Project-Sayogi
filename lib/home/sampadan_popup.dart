import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortcutItemData {
  final IconData icon;
  final String label;

  ShortcutItemData({required this.icon, required this.label});
}

class SampadanMenuPopup extends StatefulWidget {
   const SampadanMenuPopup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SampadanMenuPopupState createState() => _SampadanMenuPopupState();
}

class _SampadanMenuPopupState extends State<SampadanMenuPopup> {
  List<ShortcutItemData> items = [
    ShortcutItemData(icon: Icons.person, label: 'पार्टी थप्नुहोस्'),
    ShortcutItemData(icon: Icons.camera_alt, label: 'साइट सिर्जना'),
    ShortcutItemData(icon: Icons.money_off, label: 'आम्दानी'),
    ShortcutItemData(icon: Icons.person, label: 'घरधुनी'),
    ShortcutItemData(icon: Icons.camera_alt, label: 'साइटको फोटो'),
    ShortcutItemData(icon: Icons.money, label: 'खर्च'),
  ];

  void _addItem() {
    setState(() {
      items.add(ShortcutItemData(icon: Icons.star, label: 'नयाँ आइटम'));
    });
  }

  void _removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor:  Color(0xFFFFFFFF),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: 400,
        padding:  EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'सर्टकटहरू',
              style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // You can make it dynamic
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0x381AB189),
                            child: Icon(item.icon, size: 30, color: Color(0xFF1AB189)),
                          ),
                           SizedBox(height: 5),
                          Text(
                            item.label,
                            style: GoogleFonts.poppins(fontSize: 12, color: Color(0xFF555555), fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => _removeItem(index),
                          child:  Icon(Icons.remove_circle, color: Colors.red, size: 20),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
             SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: _addItem,
                  icon:  Icon(Icons.add, color: Colors.black),
                  label:  Text('थप्नुहोस', style: GoogleFonts.poppins(color: Colors.black)),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child:  Text('बन्द गर्नुहोस', style: GoogleFonts.poppins(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


