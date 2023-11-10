import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sbox_web/core/components/utils.dart';
import 'package:sbox_web/core/themes/themes.dart';
import 'package:sbox_web/features/homepage/widgets/top_bar_contents.dart';

class LargeScreenLayout extends StatefulWidget {
  const LargeScreenLayout({super.key});

  @override
  _LargeScreenLayoutState createState() => _LargeScreenLayoutState();
}

class _LargeScreenLayoutState extends State<LargeScreenLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var w = screenSize.width * 0.06;

    var h = screenSize.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: w,
        elevation: 0,
        backgroundColor: AppTheme.of(context).primaryColor.withOpacity(0.5),
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
                          height: screenSize.height * 0.75,
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
                                            AppTheme.of(context).title2,
                                            AppTheme.of(context).whiteColor),
                                        heroContentText(
                                            context,
                                            "E-Invoicing Platform for all businesses",
                                            AppTheme.of(context).title1,
                                            AppTheme.of(context).whiteColor),
                                        heroContentText(
                                            context,
                                            "It's an app for digitizing invoices to enable smooth one click purchase booking with an inbuilt inventory management system for SMB's. With an on-the-cloud API integration to all available accounting software's.",
                                            AppTheme.of(context)
                                                .title3
                                                .override(
                                                    fontWeight:
                                                        FontWeight.w400),
                                            AppTheme.of(context).whiteColor),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical:
                                                  screenSize.width * 0.01),
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
                                                    horizontal: h * 0.038,
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
                                                    horizontal: h * 0.038,
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
                                          focalRadius: screenSize.width * 0.76,
                                          colors: [
                                            AppTheme.of(context)
                                                .primaryGradient,
                                            AppTheme.of(context).primaryColor,
                                          ],
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: screenSize.height * 0.56,
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
                        Padding(
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.73),
                          child: Container(
                            height: h * 0.04,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: AppTheme.of(context)
                                    .primaryColor
                                    .withOpacity(0.5),
                                blurRadius: 14,
                                spreadRadius: 10,
                              )
                            ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: h * 0.48,
                    ),
                    Container(
                      height: h * 0.335,
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
                    ).copyWith(top: screenSize.height * 0.61),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 2,
                      color: AppTheme.of(context).whiteColor,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.08,
                          vertical: screenSize.height * 0.08,
                        ),
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
              padding: EdgeInsets.all(0),
              // EdgeInsets.symmetric(
              //     horizontal: screenSize.width > 1100 &&
              //             screenSize.width <= 1350
              //         ? screenSize.width * 0.005
              //         : screenSize.width > 1350 && screenSize.width <= 1520
              //             ? screenSize.width * 0.04
              //             : screenSize.width > 1520 && screenSize.width <= 1700
              //                 ? screenSize.width * 0.04
              //                 : screenSize.width * 0.14),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                            horizontal: w, vertical: screenSize.height * 0.1)
                        .copyWith(top: screenSize.width * 0.05),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              children: [
                                const Expanded(flex: 1, child: SizedBox()),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          AppTheme.of(context)
                                              .bodyText1
                                              .override(
                                                  fontWeight: FontWeight.w400),
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
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
                                      //             AppTheme.of(context)
                                      //                 .startUpText),
                                      //         heroContentText(
                                      //             context,
                                      //             " No hiring costs",
                                      //             AppTheme.of(context)
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
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
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
                                      //             AppTheme.of(context)
                                      //                 .startUpText),
                                      //         heroContentText(
                                      //             context,
                                      //             " No contracts. No risks",
                                      //             AppTheme.of(context)
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
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
                              top: -screenSize.height * 0.12,
                              left: (screenSize.width - w) * 0.05,
                              bottom: 0,
                              child: SizedBox(
                                child: Transform.scale(
                                  scaleY: 1.4,
                                  scaleX: 1.1,
                                  child: Image.asset(
                                    "assets/images/startup_portrait.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            // Positioned(
                            //   top: screenSize.height * 0.015,
                            //   right: screenSize.width > 1520
                            //       ? (screenSize.width - w) * 0.4
                            //       : (screenSize.width - w) * 0.43,
                            //   child: SizedBox(
                            //     width: screenSize.width > 1100
                            //         ? screenSize.width * 0.1
                            //         : screenSize.width * 0.2,
                            //     child: Divider(
                            //       color: AppTheme.of(context).startUpText,
                            //       thickness: 1,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.12,
                        vertical: screenSize.height * 0.02),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Stack(
                              children: [
                                // Container(
                                //   height: screenSize.height * 0.22,
                                //   width: screenSize.width * 0.6,
                                //   decoration: BoxDecoration(
                                //     border: Border.all(
                                //         color: AppTheme.of(context).marketText,
                                //         width: 1,
                                //         style: BorderStyle.solid),
                                //     borderRadius: BorderRadius.circular(20),
                                //   ),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 30),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              heroContentText(
                                                  context,
                                                  "Marketing Teams",
                                                  AppTheme.of(context).title1,
                                                  AppTheme.of(context)
                                                      .marketText,
                                                  textAlign: TextAlign.start),
                                              heroContentText(
                                                  context,
                                                  "Elevate your marketing game with Sbox. There is no more need to conduct endless interviews to find the right graphic designers. Our adept team of Sbox Crafters is poised to deliver top-notch graphics effortlessly, freeing up your time to focus on achieving your marketing objectives. Enjoy a swifter turnaround without compromising on quality, thanks to our rigorous quality control process applied to every creative project. Choose Sbox to enhance your marketing endeavors, where seamless efficiency meets exceptional design.",
                                                  AppTheme.of(context)
                                                      .bodyText1
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400),
                                                  AppTheme.of(context)
                                                      .marketText),
                                              // Column(
                                              //   children: [
                                              //     Row(
                                              //       crossAxisAlignment:
                                              //           CrossAxisAlignment
                                              //               .center,
                                              //       children: [
                                              //         heroContentText(
                                              //             context,
                                              //             String.fromCharCode(
                                              //                 0x2756),
                                              //             AppTheme.of(context)
                                              //                 .title2
                                              //                 .copyWith(
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400),
                                              //             AppTheme.of(context)
                                              //                 .marketText),
                                              //         heroContentText(
                                              //             context,
                                              //             " Faster Turnaround",
                                              //             AppTheme.of(context)
                                              //                 .title2
                                              //                 .copyWith(
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400),
                                              //             AppTheme.of(context)
                                              //                 .marketText),
                                              //       ],
                                              //     ),
                                              //     Row(
                                              //       crossAxisAlignment:
                                              //           CrossAxisAlignment
                                              //               .center,
                                              //       children: [
                                              //         heroContentText(
                                              //             context,
                                              //             String.fromCharCode(
                                              //                 0x2756),
                                              //             AppTheme.of(context)
                                              //                 .title2
                                              //                 .copyWith(
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400),
                                              //             AppTheme.of(context)
                                              //                 .marketText),
                                              //         heroContentText(
                                              //             context,
                                              //             " Quality Control for each creative",
                                              //             AppTheme.of(context)
                                              //                 .title2
                                              //                 .copyWith(
                                              //                     fontWeight:
                                              //                         FontWeight
                                              //                             .w400),
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
                              top: -screenSize.height * 0.16,
                              right: screenSize.width * 0.01,
                              child: SizedBox(
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Transform.scale(
                                      scaleY: 0.7,
                                      scaleX: 0.7,
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
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.12,
                        vertical: screenSize.height * 0.04),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              children: [
                                const Expanded(flex: 1, child: SizedBox()),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          AppTheme.of(context).bodyText1,
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
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
                                      //             AppTheme.of(context)
                                      //                 .appDevText),
                                      //         heroContentText(
                                      //             context,
                                      //             " Faster Turnaround",
                                      //             AppTheme.of(context)
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
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
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
                                      //             AppTheme.of(context)
                                      //                 .appDevText),
                                      //         heroContentText(
                                      //             context,
                                      //             " Quality Control for each creative",
                                      //             AppTheme.of(context)
                                      //                 .title2
                                      //                 .copyWith(
                                      //                     fontWeight:
                                      //                         FontWeight.w400),
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
                            // Positioned(
                            //   top: -screenSize.height * 0.1,
                            //   left: (screenSize.width - w) * 0.04,
                            //   bottom: 0,
                            //   child: SizedBox(
                            //     child: LayoutBuilder(
                            //       builder: (context, constraints) {
                            //         return Transform.scale(
                            //           scaleY: 1.1,
                            //           scaleX: 1,
                            //           child: Image.asset(
                            //             "assets/images/startup_portrait.png",
                            //             fit: BoxFit.contain,
                            //           ),
                            //         );
                            //       },
                            //     ),
                            //   ),
                            // ),
                            Positioned(
                              top: -screenSize.height * 0.22,
                              left: -(screenSize.width - w) * 0.03,
                              // left: -(screenSize.width - w) * 0.09,
                              child: Transform.scale(
                                scaleY: 0.7,
                                scaleX: 0.7,
                                child: Image.asset(
                                  "assets/images/app_dev_avatar_portrait.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            // Positioned(
                            //   top: screenSize.height * 0.015,
                            //   right: screenSize.width > 1520
                            //       ? (screenSize.width - w) * 0.4
                            //       : (screenSize.width - w) * 0.42,
                            //   child: SizedBox(
                            //     width: screenSize.width * 0.1,
                            //     child: Divider(
                            //       color: AppTheme.of(context).startUpText,
                            //       thickness: 1,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
