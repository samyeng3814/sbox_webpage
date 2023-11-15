import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sbox_web/core/components/utils.dart';
import 'package:sbox_web/core/constants.dart';
import 'package:sbox_web/core/themes/themes.dart';

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    FocusNode nameFocusNode = FocusNode();
    FocusNode mailFocusNode = FocusNode();

    FocusNode subjectFocusNode = FocusNode();

    FocusNode messageFocusNode = FocusNode();

    TextEditingController nameController = TextEditingController();
    TextEditingController mailController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          title: Image.asset(
            'assets/images/sbox_logo.png',
            height: 35,
          ),
          backgroundColor: AppTheme.of(context).primaryColor.withOpacity(1),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppTheme.of(context).primaryColor,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.2,
                      child: Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          'assets/images/hero_banner_img.png',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heroContentText(
                            context,
                            "POWER OF DIGITAL TRANSFORM",
                            AppTheme.of(context).title2.override(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                            AppTheme.of(context).whiteColor,
                          ),
                          heroContentText(
                            context,
                            "E-Invoicing Platform for all businesses",
                            AppTheme.of(context).title1.override(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                            AppTheme.of(context).whiteColor,
                          ),
                          heroContentText(
                            context,
                            headerContent,
                            AppTheme.of(context).bodyText1.override(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                            AppTheme.of(context).whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              typeOfServices(
                                  context,
                                  'assets/images/app_development.png',
                                  "App Development"),
                              typeOfServices(
                                  context, 'assets/images/iot.png', "IOT"),
                              typeOfServices(
                                  context,
                                  'assets/images/brand_marketing.png',
                                  "Brand Marketing"),
                              typeOfServices(context,
                                  'assets/images/design.png', "Design"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 20,
                            ),
                            child: Divider(
                              color: AppTheme.of(context).primaryAppText,
                            ),
                          ),
                          heroContentText(
                              context,
                              "See our recent works",
                              AppTheme.of(context).title3.override(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                              AppTheme.of(context).primaryAppText,
                              textAlign: TextAlign.center),
                          const SizedBox(
                            height: 10,
                          ),
                          heroContentText(
                            context,
                            "Social Media designs, Presentations, Logos, GIFs and more. We provide high-calibre graphics of all styles",
                            AppTheme.of(context).bodyText1,
                            AppTheme.of(context).primaryAppText,
                            textAlign: TextAlign.center,
                          ),
                          carouselSliderWidget(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: -screenSize.height * 0.18,
                    left: -screenSize.width * 0.05,
                    child: Transform.rotate(
                      angle: pi / 4.3,
                      child: Container(
                        width: MediaQuery.of(context).size.height * 0.25,
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.48, -0.88),
                            end: Alignment(-0.48, 0.88),
                            colors: [
                              Color(0xFFF36B6B),
                              Color(0xFFFDC912),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(130),
                          ),
                        ),
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0)
                          .copyWith(bottom: 0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            heroContentText(
                                context,
                                "Startups",
                                AppTheme.of(context).title1,
                                AppTheme.of(context).startUpText,
                                textAlign: TextAlign.start),
                            heroContentText(
                                context,
                                startupContent,
                                AppTheme.of(context)
                                    .title3
                                    .copyWith(fontWeight: FontWeight.w400),
                                AppTheme.of(context).startUpText),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0)
                        .copyWith(top: 0, right: 0),
                    child: Container(
                      padding: const EdgeInsets.all(20).copyWith(right: 10),
                      decoration: BoxDecoration(
                        color: AppTheme.of(context).whiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heroContentText(
                              context,
                              'Marketing Teams',
                              AppTheme.of(context).title1,
                              AppTheme.of(context).marketText,
                              textAlign: TextAlign.start),
                          heroContentText(
                              context,
                              marketingTeamsContent,
                              AppTheme.of(context)
                                  .title3
                                  .copyWith(fontWeight: FontWeight.w400),
                              AppTheme.of(context).marketText),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0, right: 0),
                child: Stack(
                  children: [
                    Positioned(
                      right: -50,
                      bottom: -90,
                      child: Container(
                        width: 260,
                        height: 260,
                        decoration: const ShapeDecoration(
                          gradient: LinearGradient(
                            transform: GradientRotation(-90),
                            begin: Alignment(1.00, 0.00),
                            end: Alignment(-3, 0),
                            colors: [
                              Color(0xFFFDC912),
                              Color(0xFFF36B6B),
                            ],
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10,
                        sigmaY: 10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0)
                            .copyWith(top: 0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              heroContentText(
                                  context,
                                  "App Development",
                                  AppTheme.of(context).title1,
                                  AppTheme.of(context).appDevText,
                                  textAlign: TextAlign.start),
                              heroContentText(
                                  context,
                                  appDevelopmentContent,
                                  AppTheme.of(context)
                                      .title3
                                      .copyWith(fontWeight: FontWeight.w400),
                                  AppTheme.of(context).appDevText),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.08,
                  20,
                  screenSize.width * 0.08,
                  20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 14),
                                child: heroContentText(
                                    context,
                                    'CONTACT US',
                                    AppTheme.of(context).title2,
                                    AppTheme.of(context).primaryAppText)),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 14),
                              child: heroContentText(
                                context,
                                'Let\'s Connect',
                                AppTheme.of(context).title1,
                                AppTheme.of(context).blackColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: SvgPicture.asset(
                                        "assets/svg/location_arrow.svg"),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                              context,
                                              'Location',
                                              AppTheme.of(context).title2,
                                              AppTheme.of(context).blackColor),
                                          heroContentText(
                                              context,
                                              '228, SBOX TECH PRIVATE LIMITED, Bommasandra Industrial Area Phase 3, Bangalore, Darnataka - 560099',
                                              AppTheme.of(context).mediumTitle3,
                                              AppTheme.of(context)
                                                  .secondaryText),
                                          const SizedBox(
                                            height: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Divider(
                                  color: AppTheme.of(context)
                                      .primaryAppText
                                      .withOpacity(0.3),
                                  height: 1,
                                  thickness: 1,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 34,
                                    width: 34,
                                    child: SvgPicture.asset(
                                        "assets/svg/envelope_solid.svg"),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                              context,
                                              'Email',
                                              AppTheme.of(context).title2,
                                              AppTheme.of(context).blackColor),
                                          heroContentText(
                                              context,
                                              'vel@sbox.ltd\nvel@sameta.in',
                                              AppTheme.of(context).mediumTitle3,
                                              AppTheme.of(context)
                                                  .secondaryText),
                                          const SizedBox(
                                            height: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Divider(
                                  color: AppTheme.of(context)
                                      .primaryAppText
                                      .withOpacity(0.3),
                                  height: 1,
                                  thickness: 1,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 34,
                                    width: 34,
                                    child: SvgPicture.asset(
                                        "assets/svg/phone_solid.svg"),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                              context,
                                              'Phone',
                                              AppTheme.of(context).title2,
                                              AppTheme.of(context).blackColor),
                                          heroContentText(
                                              context,
                                              '+91 7904661052\n+91 7305261052',
                                              AppTheme.of(context).mediumTitle3,
                                              AppTheme.of(context)
                                                  .secondaryText),
                                          const SizedBox(
                                            height: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 60, vertical: 60.0),
                        //   child: Column(
                        //     children: [
                        //       Form(
                        //           child: Column(
                        //         children: [
                        //           Padding(
                        //             padding:
                        //                 const EdgeInsets.only(bottom: 14.0),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 heroContentText(
                        //                   context,
                        //                   'Your Name',
                        //                   AppTheme.of(context).mediumTitle2,
                        //                   AppTheme.of(context).blackColor,
                        //                 ),
                        //                 textFormField(context, nameFocusNode,
                        //                     nameController, "Your Name", 1),
                        //               ],
                        //             ),
                        //           ),
                        //           Padding(
                        //             padding:
                        //                 const EdgeInsets.only(bottom: 14.0),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 heroContentText(
                        //                   context,
                        //                   'Your Mail',
                        //                   AppTheme.of(context).mediumTitle2,
                        //                   AppTheme.of(context).blackColor,
                        //                 ),
                        //                 textFormField(context, mailFocusNode,
                        //                     mailController, "Your Mail", 1),
                        //               ],
                        //             ),
                        //           ),
                        //           Padding(
                        //             padding:
                        //                 const EdgeInsets.only(bottom: 14.0),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 heroContentText(
                        //                   context,
                        //                   'Your Subject',
                        //                   AppTheme.of(context).mediumTitle2,
                        //                   AppTheme.of(context).blackColor,
                        //                 ),
                        //                 textFormField(
                        //                     context,
                        //                     subjectFocusNode,
                        //                     subjectController,
                        //                     "Your Subject",
                        //                     1),
                        //               ],
                        //             ),
                        //           ),
                        //           Padding(
                        //             padding:
                        //                 const EdgeInsets.only(bottom: 14.0),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 heroContentText(
                        //                   context,
                        //                   'Your Message',
                        //                   AppTheme.of(context).mediumTitle2,
                        //                   AppTheme.of(context).blackColor,
                        //                 ),
                        //                 textFormField(
                        //                     context,
                        //                     messageFocusNode,
                        //                     messageController,
                        //                     "Your Message",
                        //                     5),
                        //               ],
                        //             ),
                        //           )
                        //         ],
                        //       ))
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
