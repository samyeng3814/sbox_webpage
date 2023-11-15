import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sbox_web/core/components/utils.dart';
import 'package:sbox_web/core/constants.dart';
import 'package:sbox_web/core/themes/themes.dart';

class LargeScreenLayout extends StatefulWidget {
  const LargeScreenLayout({super.key});

  @override
  State<LargeScreenLayout> createState() => _LargeScreenLayoutState();
}

class _LargeScreenLayoutState extends State<LargeScreenLayout> {
  FocusNode nameFocusNode = FocusNode();
  FocusNode mailFocusNode = FocusNode();

  FocusNode subjectFocusNode = FocusNode();

  FocusNode messageFocusNode = FocusNode();

  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var w = screenSize.width * 0.09;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: w,
          elevation: 0,
          title: SizedBox(
            width: 80,
            child: Image.asset("assets/images/sbox_logo.png"),
          ),
          backgroundColor: AppTheme.of(context).primaryColor.withOpacity(1),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppTheme.of(context).primaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: w,
                            vertical: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    heroContentText(
                                      context,
                                      'POWER OF DIGITAL TRANSFORM',
                                      AppTheme.of(context).title2,
                                      AppTheme.of(context).whiteColor,
                                    ),
                                    heroContentText(
                                      context,
                                      'E-Invoicing Platform for all businesses',
                                      AppTheme.of(context).title1,
                                      AppTheme.of(context).whiteColor,
                                    ),
                                    heroContentText(
                                      context,
                                      headerContent,
                                      AppTheme.of(context).title3.override(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 24,
                                          ),
                                      AppTheme.of(context).whiteColor,
                                      lineheight: 1.5,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const Opacity(
                                opacity: 0.7,
                                child: Image(
                                  alignment: Alignment.centerRight,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/hero_banner_img.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.50,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppTheme.of(context).secondaryGradiant2,
                              AppTheme.of(context).secondaryGradiant1,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: w,
                        // 60,
                        // MediaQuery.of(context).size.height * 0.50,
                        // 60,
                        // 20,
                      ).copyWith(
                          top: MediaQuery.of(context).size.height * 0.50,
                          bottom: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 6,
                        color: AppTheme.of(context).whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.all(50),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 40.0),
                                child: Divider(
                                  color: AppTheme.of(context).primaryAppText,
                                  height: 1,
                                  thickness: 1,
                                ),
                              ),
                              heroContentText(
                                  context,
                                  "See our recent works",
                                  AppTheme.of(context).title1,
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
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue.withOpacity(0.1),
                    Colors.yellow.withOpacity(0.1),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    w,
                    10,
                    w,
                    0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/startup_portrait.png",
                            fit: BoxFit.contain,
                            height: 350,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                heroContentText(
                                  context,
                                  "Startups",
                                  AppTheme.of(context).title1,
                                  AppTheme.of(context).startUpText,
                                  textAlign: TextAlign.start,
                                ),
                                heroContentText(
                                  context,
                                  startupContent,
                                  AppTheme.of(context)
                                      .bodyText1
                                      .override(fontWeight: FontWeight.w400),
                                  AppTheme.of(context).startUpText,
                                  lineheight:
                                      (MediaQuery.of(context).size.width > 1400)
                                          ? 1.5
                                          : 1.2,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                heroContentText(
                                    context,
                                    "Marketing Teams",
                                    AppTheme.of(context).title1,
                                    AppTheme.of(context).startUpText,
                                    textAlign: TextAlign.start),
                                heroContentText(
                                  context,
                                  marketingTeamsContent,
                                  AppTheme.of(context)
                                      .bodyText1
                                      .override(fontWeight: FontWeight.w400),
                                  AppTheme.of(context).startUpText,
                                  lineheight:
                                      (MediaQuery.of(context).size.width > 1400)
                                          ? 1.5
                                          : 1.2,
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/images/marketing_team_avatar_portrait.png",
                            fit: BoxFit.contain,
                            height: 350,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/app_dev_avatar_portrait.png",
                            fit: BoxFit.cover,
                            height: 350,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                heroContentText(
                                    context,
                                    "App Development",
                                    AppTheme.of(context).title1,
                                    AppTheme.of(context).startUpText,
                                    textAlign: TextAlign.start),
                                heroContentText(
                                  context,
                                  appDevelopmentContent,
                                  AppTheme.of(context)
                                      .bodyText1
                                      .override(fontWeight: FontWeight.w400),
                                  AppTheme.of(context).startUpText,
                                  lineheight:
                                      (MediaQuery.of(context).size.width > 1400)
                                          ? 1.5
                                          : 1.2,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.18,
                  20,
                  screenSize.width * 0.18,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 60.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 34,
                                      width: 34,
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
                                                AppTheme.of(context)
                                                    .blackColor),
                                            heroContentText(
                                                context,
                                                '228, SBOX TECH PRIVATE LIMITED, Bommasandra Industrial Area Phase 3, Bangalore, Darnataka - 560099',
                                                AppTheme.of(context)
                                                    .mediumTitle3,
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Divider(
                                    color: AppTheme.of(context).primaryAppText,
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
                                                'Contact',
                                                AppTheme.of(context).title2,
                                                AppTheme.of(context)
                                                    .blackColor),
                                            heroContentText(
                                                context,
                                                'info@sbox.ltd',
                                                AppTheme.of(context)
                                                    .mediumTitle3,
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Divider(
                                    color: AppTheme.of(context).primaryAppText,
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
                                                'Contact',
                                                AppTheme.of(context).title2,
                                                AppTheme.of(context)
                                                    .blackColor),
                                            heroContentText(
                                                context,
                                                '+91 7200474487',
                                                AppTheme.of(context)
                                                    .mediumTitle3,
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
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 60.0),
                            child: Column(
                              children: [
                                Form(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 14.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                            context,
                                            'Your Name',
                                            AppTheme.of(context).mediumTitle2,
                                            AppTheme.of(context).blackColor,
                                          ),
                                          textFormField(context, nameFocusNode,
                                              nameController, "Your Name", 1),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 14.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                            context,
                                            'Your Mail',
                                            AppTheme.of(context).mediumTitle2,
                                            AppTheme.of(context).blackColor,
                                          ),
                                          textFormField(context, mailFocusNode,
                                              mailController, "Your Mail", 1),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 14.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                            context,
                                            'Your Subject',
                                            AppTheme.of(context).mediumTitle2,
                                            AppTheme.of(context).blackColor,
                                          ),
                                          textFormField(
                                              context,
                                              subjectFocusNode,
                                              subjectController,
                                              "Your Subject",
                                              1),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 14.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heroContentText(
                                            context,
                                            'Your Message',
                                            AppTheme.of(context).mediumTitle2,
                                            AppTheme.of(context).blackColor,
                                          ),
                                          textFormField(
                                              context,
                                              messageFocusNode,
                                              messageController,
                                              "Your Message",
                                              5),
                                        ],
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
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
