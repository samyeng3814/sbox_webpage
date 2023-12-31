import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sbox_web/core/components/responsive.dart';
import 'package:sbox_web/core/constants.dart';
import 'package:sbox_web/core/themes/themes.dart';

Column typeOfServices(
    BuildContext context, String imgPath, String nameOfServices) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: AppTheme.of(context).secondaryText.withOpacity(0.4),
        radius: ResponsiveWidget.isLargeScreen(context)
            ? 84
            : ResponsiveWidget.isMediumScreen(context)
                ? 68
                : 74,
        child: CircleAvatar(
          radius: ResponsiveWidget.isLargeScreen(context)
              ? 78
              : ResponsiveWidget.isMediumScreen(context)
                  ? 60
                  : 68,
          backgroundColor: Colors.white,
          child: Image.asset(
            imgPath,
            fit: BoxFit.contain,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        nameOfServices,
        style: AppTheme.of(context).bodyText1.override(
            color: AppTheme.of(context).secondaryText,
            fontSize: ResponsiveWidget.isLargeScreen(context)
                ? 24
                : ResponsiveWidget.isMediumScreen(context)
                    ? 18
                    : 14),
      )
    ],
  );
}

Padding heroContentText(
    BuildContext context, String content, TextStyle style, Color textColor,
    {TextAlign? textAlign, double? lineheight}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15).copyWith(top: 0),
    child: Text(
      content,
      textAlign: textAlign,
      style: style.override(
        color: textColor,
        lineHeight: lineheight,
      ),
    ),
  );
}

CarouselSlider carouselSliderWidget(BuildContext context) {
  return CarouselSlider(
    items: carouselList,
    options: CarouselOptions(
      autoPlay: true,
      height: 220,
      enlargeCenterPage: true,
      viewportFraction: ResponsiveWidget.isSmallScreen(context) ? 0.5 : 0.3,
    ),
  );
}

TextFormField textFormField(BuildContext context, FocusNode focusNode,
    TextEditingController controller, String hintText, int maxLines) {
  return TextFormField(
    obscureText: false,
    focusNode: focusNode,
    controller: controller,
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.of(context).tertiaryColorPlus,
          width: 3,
        ),
      ),
      hintText: hintText,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black38,
        ),
      ),
    ),
    validator: (val) {
      if (val == null || val.isEmpty) {
        return 'Enter your $hintText';
      }
      return null;
    },
    maxLines: maxLines,
  );
}
