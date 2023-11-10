import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sbox_web/core/components/utils.dart';
import 'package:sbox_web/core/themes/themes.dart';
import 'package:sbox_web/features/homepage/widgets/top_bar_contents.dart';

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
        backgroundColor: AppTheme.of(context).primaryColor.withOpacity(0.5),
        title: Container(
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
                                            "POWER OF DIGITAL TRANSFORM",
                                            AppTheme.of(context).mediumTitle2,
                                            AppTheme.of(context).whiteColor),
                                        heroContentText(
                                            context,
                                            "E-Invoicing Platform for all businesses",
                                            AppTheme.of(context).mediumTitle1,
                                            AppTheme.of(context).whiteColor),
                                        heroContentText(
                                            context,
                                            "It's an app for digitizing invoices to enable smooth one click purchase booking with an inbuilt inventory management system for SMB's. With an on-the-cloud API integration to all available accounting software's.",
                                            AppTheme.of(context).mediumTitle3,
                                            AppTheme.of(context).whiteColor),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical:
                                                  screenSize.width * 0.02),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  backgroundColor:
                                                      AppTheme.of(context)
                                                          .whiteColor,
                                                  elevation: 2,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: h * 0.032,
                                                    vertical: 20,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Book a Demo",
                                                  style: AppTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                          color: AppTheme.of(
                                                                  context)
                                                              .primaryAppText),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 18,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color:
                                                            AppTheme.of(context)
                                                                .whiteColor,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  elevation: 2,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: h * 0.032,
                                                    vertical: 20,
                                                  ),
                                                ),
                                                child: Text(
                                                  "See Plans",
                                                  style: AppTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                          color: AppTheme.of(
                                                                  context)
                                                              .whiteColor),
                                                ),
                                              )
                                            ],
                                          ),
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width > 860 && screenSize.width <= 960
                      ? screenSize.width * 0.04
                      : screenSize.width > 960 && screenSize.width <= 1050
                          ? screenSize.width * 0.065
                          : screenSize.width > 1050
                              ? screenSize.width * 0.075
                              : 0),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w, vertical: 26),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Row(
                            children: [
                              const Expanded(flex: 1, child: SizedBox()),
                              Expanded(
                                flex: 1,
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
                                        "Streamline your startup's visual identity effortlessly with Sbox, your preferred solution for cost-effective design services. Skip the recruitment hassle and contractual commitments – Sbox ensures a seamless design experience without the burden of hiring costs or long-term agreements. Immerse your business in a world of creative possibilities without the traditional constraints, as we handle your design needs with ease and affordability. Embrace a risk-free approach to enhancing your brand aesthetics, and let Sbox be your trusted partner in crafting a visually compelling identity for your startup.",
                                        AppTheme.of(context).mediumTitle2,
                                        AppTheme.of(context).startUpText),
                                    // Column(
                                    //   children: [
                                    //     Row(
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.center,
                                    //       children: [
                                    //         heroContentText(
                                    //             context,
                                    //             String.fromCharCode(0x2756),
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .startUpText),
                                    //         heroContentText(
                                    //             context,
                                    //             " No hiring costs",
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .startUpText),
                                    //       ],
                                    //     ),
                                    //     Row(
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.center,
                                    //       children: [
                                    //         heroContentText(
                                    //             context,
                                    //             String.fromCharCode(0x2756),
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .startUpText),
                                    //         heroContentText(
                                    //             context,
                                    //             " No contracts. No risks",
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .startUpText),
                                    //       ],
                                    //     )
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -screenSize.height * 0.1,
                            left: -screenSize.width * 0.08,
                            bottom: 0,
                            child: SizedBox(
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Transform.scale(
                                    scaleY: 1.01,
                                    scaleX: 0.7,
                                    child: Image.asset(
                                      "assets/images/startup_portrait.png",
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            top: 14,
                            right: screenSize.width > 860
                                ? screenSize.width / 2 - screenSize.width * 0.08
                                : screenSize.width / 2 - 20,
                            child: SizedBox(
                              width: screenSize.width * 0.16,
                              child: Divider(
                                color: AppTheme.of(context).startUpText,
                                thickness: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: 40,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w, vertical: 26),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: screenSize.height * 0.22,
                                width: screenSize.width > 860
                                    ? screenSize.width * 0.58
                                    : screenSize.width * 0.65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppTheme.of(context).marketText,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            heroContentText(
                                                context,
                                                "Martketing Teams",
                                                AppTheme.of(context).title1,
                                                AppTheme.of(context).marketText,
                                                textAlign: TextAlign.start),
                                            heroContentText(
                                                context,
                                                "Elevate your marketing game with Sbox. There is no more need to conduct endless interviews to find the right graphic designers. Our adept team of Sbox Crafters is poised to deliver top-notch graphics effortlessly, freeing up your time to focus on achieving your marketing objectives. Enjoy a swifter turnaround without compromising on quality, thanks to our rigorous quality control process applied to every creative project. Choose Sbox to enhance your marketing endeavors, where seamless efficiency meets exceptional design.",
                                                AppTheme.of(context)
                                                    .mediumTitle2,
                                                AppTheme.of(context)
                                                    .marketText),
                                            // Column(
                                            //   children: [
                                            //     Row(
                                            //       crossAxisAlignment:
                                            //           CrossAxisAlignment.center,
                                            //       children: [
                                            //         heroContentText(
                                            //             context,
                                            //             String.fromCharCode(
                                            //                 0x2756),
                                            //             AppTheme.of(context)
                                            //                 .mediumTitle2,
                                            //             AppTheme.of(context)
                                            //                 .marketText),
                                            //         heroContentText(
                                            //             context,
                                            //             " Faster Turnaround",
                                            //             AppTheme.of(context)
                                            //                 .mediumTitle2,
                                            //             AppTheme.of(context)
                                            //                 .marketText),
                                            //       ],
                                            //     ),
                                            //     Row(
                                            //       crossAxisAlignment:
                                            //           CrossAxisAlignment.center,
                                            //       children: [
                                            //         heroContentText(
                                            //             context,
                                            //             String.fromCharCode(
                                            //                 0x2756),
                                            //             AppTheme.of(context)
                                            //                 .mediumTitle2,
                                            //             AppTheme.of(context)
                                            //                 .marketText),
                                            //         heroContentText(
                                            //             context,
                                            //             " Quality Control for each creative",
                                            //             AppTheme.of(context)
                                            //                 .mediumTitle2,
                                            //             AppTheme.of(context)
                                            //                 .marketText),
                                            //       ],
                                            //     )
                                            //   ],
                                            // ),
                                          ],
                                        ),
                                      ),
                                      const Expanded(
                                          flex: 1, child: SizedBox()),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -screenSize.height * 0.08,
                            right: -screenSize.width * 0.1,
                            child: SizedBox(
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Transform.scale(
                                    scaleY: 0.8,
                                    scaleX: 0.8,
                                    child: Image.asset(
                                      "assets/images/marketing_team_avatar_portrait.png",
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w, vertical: 26),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Row(
                            children: [
                              const Expanded(flex: 1, child: SizedBox()),
                              Expanded(
                                flex: 1,
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
                                        "Enhance your business focus by relying on SBOX for your app development requirements—a streamlined and cost-effective solution. With no hiring costs or contractual obligations, you can minimize risks while receiving top-tier app development services tailored to your specific needs. Entrust SBOX to elevate your app development seamlessly, allowing you to concentrate on your core business endeavors.",
                                        AppTheme.of(context).mediumTitle2,
                                        AppTheme.of(context).appDevText),
                                    // Column(
                                    //   children: [
                                    //     Row(
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.center,
                                    //       children: [
                                    //         heroContentText(
                                    //             context,
                                    //             String.fromCharCode(0x2756),
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .appDevText),
                                    //         heroContentText(
                                    //             context,
                                    //             " Faster Turnaround",
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .appDevText),
                                    //       ],
                                    //     ),
                                    //     Row(
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.center,
                                    //       children: [
                                    //         heroContentText(
                                    //             context,
                                    //             String.fromCharCode(0x2756),
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .appDevText),
                                    //         heroContentText(
                                    //             context,
                                    //             " Quality Control for each creative",
                                    //             AppTheme.of(context)
                                    //                 .mediumTitle2,
                                    //             AppTheme.of(context)
                                    //                 .appDevText),
                                    //       ],
                                    //     )
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -screenSize.height * 0.16,
                            left: -screenSize.width * 0.14,
                            child: SizedBox(
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Transform.scale(
                                    scaleY: 0.81,
                                    scaleX: 0.72,
                                    child: Image.asset(
                                      "assets/images/app_dev_avatar_portrait.png",
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            top: 14,
                            right: screenSize.width > 860
                                ? screenSize.width / 2 - screenSize.width * 0.08
                                : screenSize.width / 2 - 20,
                            child: SizedBox(
                              width: screenSize.width * 0.16,
                              child: Divider(
                                color: AppTheme.of(context).appDevText,
                                thickness: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
