import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sbox_web/core/components/utils.dart';
import 'package:sbox_web/core/constants.dart';
import 'package:sbox_web/core/themes/themes.dart';

class MediumScreenLayout extends StatefulWidget {
  const MediumScreenLayout({super.key});

  @override
  _MediumScreenLayoutState createState() => _MediumScreenLayoutState();
}

class _MediumScreenLayoutState extends State<MediumScreenLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var w = screenSize.width * 0.05;

    var h = screenSize.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: w,
        elevation: 0,
        backgroundColor: AppTheme.of(context).primaryColor.withOpacity(0.8),
        title: SizedBox(
          width: 80,
          child: Image.asset("assets/images/sbox_logo.png"),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppTheme.of(context).primaryColor,
                          ),
                          height: screenSize.height * 0.56,
                          width: screenSize.width,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2,
                              sigmaY: 2,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        heroContentText(
                                            context,
                                            'POWER OF DIGITAL TRANSFORM',
                                            AppTheme.of(context).mediumTitle2,
                                            AppTheme.of(context).whiteColor),
                                        heroContentText(
                                            context,
                                            'E-Invoicing Platform for all businesses',
                                            AppTheme.of(context).mediumTitle1,
                                            AppTheme.of(context).whiteColor),
                                        heroContentText(
                                          context,
                                          headerContent,
                                          AppTheme.of(context).mediumTitle3,
                                          AppTheme.of(context).whiteColor,
                                          lineheight: 1.5,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: RadialGradient(
                                          focalRadius: screenSize.width * 0.7,
                                          colors: [
                                            AppTheme.of(context)
                                                .primaryGradient,
                                            AppTheme.of(context).primaryColor,
                                          ],
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: screenSize.height * 0.38,
                                        child: const Image(
                                          alignment: Alignment.centerRight,
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/hero_banner_img.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.5,
                    ),
                    Container(
                      height: h * 0.3,
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
                    ).copyWith(top: screenSize.height * 0.48),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 2,
                      color: AppTheme.of(context).whiteColor,
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                textAlign: TextAlign.start,
                              ),
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
          ],
        ),
      ),
    );
  }
}
