import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextPacific extends StatelessWidget {
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final String text;
  final bool? underline;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  const TextPacific(
      {super.key,
      required this.text,
      this.fontWeight,
      this.color,
      this.fontSize,
      this.underline = false,
      this.textAlign,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.pacifico(
        fontWeight: fontWeight ?? FontWeight.bold,
        fontSize: fontSize ?? 16,
        color: color ?? Colors.white,
        decoration: underline! ? TextDecoration.underline : null,
        decorationColor: color ?? Colors.white,
      ),
    );
  }
}
