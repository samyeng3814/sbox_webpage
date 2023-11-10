// ignore_for_file: annotate_overrides, overridden_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String robotoFontFamily = "Roboto";

abstract class AppTheme {
  static AppTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color primaryGradient;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color primaryAppText;
  late Color secondaryText;
  late Color whiteColor;
  late Color blackColor;
  late Color tertiaryColorPlus;
  late Color secondaryGradiant1;
  late Color secondaryGradiant2;
  late Color startUpText;
  late Color marketText;
  late Color appDevText;
  late Color dividerLine;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get mediumTitle1Family => typography.mediumTitle1Family;
  TextStyle get mediumTitle1 => typography.mediumTitle1;
  String get mediumTitle2Family => typography.mediumTitle2Family;
  TextStyle get mediumTitle2 => typography.mediumTitle2;
  String get mediumTitle3Family => typography.mediumTitle3Family;
  TextStyle get mediumTitle3 => typography.mediumTitle3;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends AppTheme {
  late Color primaryColor = const Color(0xFF341415);
  late Color primaryGradient = const Color(0xFF923736);
  late Color secondaryColor = const Color.fromRGBO(251, 239, 231, 1);
  late Color tertiaryColor = const Color(0xFFF1F4F6);
  late Color alternate = const Color(0xFF37308B);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFFFFFEFF);
  late Color primaryAppText = const Color(0xFF8E0D08);
  late Color secondaryText = const Color(0xFFA7A7A7);
  late Color whiteColor = const Color(0xFFFFFFFF);
  late Color blackColor = const Color(0xFF000000);
  late Color tertiaryColorPlus = const Color.fromARGB(255, 204, 204, 204);
  late Color secondaryGradiant1 = const Color(0xFF511F20);
  late Color secondaryGradiant2 = const Color(0xFFAC5B5B);
  late Color startUpText = const Color(0xFF3C465F);
  late Color marketText = const Color(0xFF350305);
  late Color appDevText = const Color(0xFF487AA1);
  late Color dividerLine = const Color(0xFFC7C5C6);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get mediumTitle1Family;
  TextStyle get mediumTitle1;
  String get mediumTitle2Family;
  TextStyle get mediumTitle2;
  String get mediumTitle3Family;
  TextStyle get mediumTitle3;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppTheme theme;

  String get title1Family => robotoFontFamily;
  TextStyle get title1 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  String get title2Family => robotoFontFamily;
  TextStyle get title2 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  String get title3Family => robotoFontFamily;
  TextStyle get title3 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      );
  String get subtitle1Family => robotoFontFamily;
  TextStyle get subtitle1 => GoogleFonts.getFont(
        robotoFontFamily,
        color: const Color(0xFFA7A7A7),
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  String get subtitle2Family => robotoFontFamily;
  TextStyle get subtitle2 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  String get bodyText1Family => robotoFontFamily;
  TextStyle get bodyText1 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );

  String get mediumTitle1Family => robotoFontFamily;
  TextStyle get mediumTitle1 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      );

  String get mediumTitle2Family => robotoFontFamily;
  TextStyle get mediumTitle2 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );

  String get mediumTitle3Family => robotoFontFamily;
  TextStyle get mediumTitle3 => GoogleFonts.getFont(
        robotoFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily = "Roboto",
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
