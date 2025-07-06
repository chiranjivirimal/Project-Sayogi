import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimePeriodPicker extends StatefulWidget {
  final ValueChanged<int>? onChanged;
  const TimePeriodPicker({super.key, this.onChanged});

  @override
  State<TimePeriodPicker> createState() => _TimePeriodPickerState();
}

class _TimePeriodPickerState extends State<TimePeriodPicker> {
/* ───── geometry constants ───── */
  static const double rowWidth  = 280;
  static const double rowHeight = 56;
  static const double rowRadius = 8;

/* ───── colours ───── */
  static const Color fillSelected   = Color(0xFFE8FBF6);
  static const Color borderSelected = Color(0xCC1AB189);
  static const Color borderNormal   = Color(0xFFBDBDBD);

  static const Color textSelected   = Color(0xFF00695C);
  static const Color textUnselected = Color(0xFF424242);

/* ───── text styles ───── */
  static final TextStyle headingStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    decoration: TextDecoration.none,
    decorationColor: Colors.transparent,
  );

  static final TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: const Color(0xFF222222),
    decoration: TextDecoration.none,
    decorationColor: Colors.transparent,
  );

  static final TextStyle optionStyleNormal = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textUnselected,
    decoration: TextDecoration.none,
    decorationColor: Colors.transparent,
  );

  static final TextStyle optionStyleSelected = optionStyleNormal.copyWith(
    fontSize: 18,
    color: textSelected,
  );

/* ───── data ───── */
  final _labels = ['७ दिन', '१४ दिन', '१ महिना'];
  int _selected = 0;

/* ───── build ───── */
  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('समय अवधि छानुहोस्', style: headingStyle),
                const SizedBox(height: 20),
                ...List.generate(_labels.length, _buildRow),
                const SizedBox(height: 28),
                SizedBox(
                  width: rowWidth,
                  height: 42,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD1D5DB),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).maybePop(),
                    child: Text('बन्द गर्नुहोस्', style: buttonTextStyle),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

/* ───── single row ───── */
  Widget _buildRow(int index) {
    final bool picked = _selected == index;
    return GestureDetector(
      onTap: () {
        setState(() => _selected = index);
        widget.onChanged?.call(index);
      },
      child: Container(
        width: rowWidth,
        height: rowHeight,
        margin: EdgeInsets.only(top: index == 0 ? 0 : 12),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: picked ? fillSelected : Colors.transparent,
          borderRadius: BorderRadius.circular(rowRadius),
          border: Border.all(
            color: picked ? borderSelected : borderNormal,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Text(
              _labels[index],
              style: picked ? optionStyleSelected : optionStyleNormal,
            ),
            const Spacer(),
            if (picked) const _GreenDot(),
          ],
        ),
      ),
    );
  }
}

/* green circle on selected row */
class _GreenDot extends StatelessWidget {
  const _GreenDot();
  @override
  Widget build(BuildContext context) => Container(
        width: 14,
        height: 14,
        decoration: const BoxDecoration(
          color: Colors.teal,
          shape: BoxShape.circle,
        ),
      );
}
