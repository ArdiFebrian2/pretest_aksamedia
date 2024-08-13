import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_theme.dart';

class TextStyleTheme {
  static final title3 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: ColorTheme.primary950,
  );
  static final regular = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorTheme.primary950,
  );
  static final small = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorTheme.primary950,
  );
  static final xSmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: ColorTheme.primary950,
  );
  static final tiny = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: ColorTheme.primary950,
  );
  static final xTiny = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: const Color.fromARGB(255, 246, 247, 247),
  );
}
