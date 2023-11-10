import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sbox_web/core/components/utils.dart';
import 'package:sbox_web/core/themes/themes.dart';

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/images/sbox_logo.png',
          height: 35,
        ),
        backgroundColor: AppTheme.of(context).primaryColor.withOpacity(0.5),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppTheme.of(context).primaryColor,
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/hero_banner_img.png',
                  ),
                ),
                gradient: RadialGradient(
                  focalRadius: screenSize.width * 0.7,
                  colors: [
                    AppTheme.of(context).primaryGradient,
                    AppTheme.of(context).primaryColor,
                  ],
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2,
                  sigmaY: 2,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 20,
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
                        AppTheme.of(context).title1,
                        AppTheme.of(context).whiteColor,
                      ),
                      heroContentText(
                        context,
                        "It's an app for digitizing invoices to enable smooth one click purchase booking with an inbuilt inventory management system for SMB's. With an on-the-cloud API integration to all available accounting software's.",
                        AppTheme.of(context).bodyText1,
                        AppTheme.of(context).whiteColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: AppTheme.of(context).whiteColor,
                              elevation: 2,
                              padding: EdgeInsets.symmetric(
                                horizontal: h * 0.032,
                                vertical: 20,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Book a Demo",
                                style: AppTheme.of(context).bodyText1.override(
                                    color: AppTheme.of(context).primaryAppText),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: AppTheme.of(context).whiteColor,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: Colors.transparent,
                              elevation: 2,
                              padding: EdgeInsets.symmetric(
                                horizontal: h * 0.032,
                                vertical: 20,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "See Plans",
                                style: AppTheme.of(context).bodyText1.override(
                                    color: AppTheme.of(context).whiteColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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
                            typeOfServices(
                                context, 'assets/images/design.png', "Design"),
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
                        shadows: [
                          BoxShadow(
                            blurRadius: 6,
                            spreadRadius: 6,
                            color: const Color(0xFFFDC912).withOpacity(0.2),
                          )
                        ],
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
                // Positioned(
                //   top: 44,
                //   right: MediaQuery.of(context).size.width / 2 + 4,
                //   child: SizedBox(
                //     width: 140,
                //     child: Divider(
                //       color: AppTheme.of(context).startUpText,
                //       thickness: 1,
                //     ),
                //   ),
                // ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 6,
                    sigmaY: 6,
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
                              "Streamline your startup's visual identity effortlessly with Sbox, your preferred solution for cost-effective design services. Skip the recruitment hassle and contractual commitments – Sbox ensures a seamless design experience without the burden of hiring costs or long-term agreements. Immerse your business in a world of creative possibilities without the traditional constraints, as we handle your design needs with ease and affordability. Embrace a risk-free approach to enhancing your brand aesthetics, and let Sbox be your trusted partner in crafting a visually compelling identity for your startup.",
                              AppTheme.of(context)
                                  .title3
                                  .copyWith(fontWeight: FontWeight.w400),
                              AppTheme.of(context).startUpText),
                          // Column(
                          //   children: [
                          //     Row(
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         heroContentText(
                          //             context,
                          //             String.fromCharCode(0x2756),
                          //             AppTheme.of(context).title3.copyWith(
                          //                 fontWeight: FontWeight.w400),
                          //             AppTheme.of(context).startUpText),
                          //         heroContentText(
                          //             context,
                          //             " No hiring costs",
                          //             AppTheme.of(context).title3.copyWith(
                          //                 fontWeight: FontWeight.w400),
                          //             AppTheme.of(context).startUpText),
                          //       ],
                          //     ),
                          //     Row(
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         heroContentText(
                          //             context,
                          //             String.fromCharCode(0x2756),
                          //             AppTheme.of(context).title3.copyWith(
                          //                 fontWeight: FontWeight.w400),
                          //             AppTheme.of(context).startUpText),
                          //         heroContentText(
                          //             context,
                          //             " No contracts. No risks",
                          //             AppTheme.of(context).title3.copyWith(
                          //                 fontWeight: FontWeight.w400),
                          //             AppTheme.of(context).startUpText),
                          //       ],
                          //     )
                          //   ],
                          // ),
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
                // Positioned(
                //   right: 28,
                //   top: -1,
                //   child: Container(
                //     height: screenSize.height * 0.22,
                //     width: screenSize.width * 0.58,
                //     decoration: BoxDecoration(
                //       border: Border.all(
                //           color: AppTheme.of(context).marketText,
                //           width: 1,
                //           style: BorderStyle.solid),
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0)
                      .copyWith(top: 0, right: 0),
                  child: Container(
                    padding: const EdgeInsets.all(20).copyWith(right: 10),
                    // width: double.infinity,

                    decoration: BoxDecoration(
                      color: AppTheme.of(context).whiteColor,
                      // image: const DecorationImage(
                      //   image: AssetImage(
                      //     'assets/images/startup_portrait.png',
                      //   ),
                      // ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                .title3
                                .copyWith(fontWeight: FontWeight.w400),
                            AppTheme.of(context).marketText),
                        // Column(
                        //   children: [
                        //     Row(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         heroContentText(
                        //             context,
                        //             String.fromCharCode(0x2756),
                        //             AppTheme.of(context)
                        //                 .title3
                        //                 .copyWith(fontWeight: FontWeight.w400),
                        //             AppTheme.of(context).marketText),
                        //         heroContentText(
                        //             context,
                        //             " Faster Turnaround",
                        //             AppTheme.of(context)
                        //                 .title3
                        //                 .copyWith(fontWeight: FontWeight.w400),
                        //             AppTheme.of(context).marketText),
                        //       ],
                        //     ),
                        //     Row(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         heroContentText(
                        //             context,
                        //             String.fromCharCode(0x2756),
                        //             AppTheme.of(context)
                        //                 .title3
                        //                 .copyWith(fontWeight: FontWeight.w400),
                        //             AppTheme.of(context).marketText),
                        //         heroContentText(
                        //             context,
                        //             " Quality Control for each creative",
                        //             AppTheme.of(context)
                        //                 .title3
                        //                 .copyWith(fontWeight: FontWeight.w400),
                        //             AppTheme.of(context).marketText),
                        //       ],
                        //     )
                        //   ],
                        // ),
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
                      sigmaX: 6,
                      sigmaY: 6,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0)
                          .copyWith(top: 0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        // decoration: BoxDecoration(
                        // color: AppTheme.of(context).whiteColor,
                        // image: const DecorationImage(
                        //   image: AssetImage(
                        //     'assets/images/startup_portrait.png',
                        //   ),
                        // ),
                        // ),
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
                                AppTheme.of(context)
                                    .title3
                                    .copyWith(fontWeight: FontWeight.w400),
                                AppTheme.of(context).appDevText),
                            // Column(
                            //   children: [
                            //     Row(
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: [
                            //         heroContentText(
                            //             context,
                            //             String.fromCharCode(0x2756),
                            //             AppTheme.of(context).title3.copyWith(
                            //                 fontWeight: FontWeight.w400),
                            //             AppTheme.of(context).appDevText),
                            //         heroContentText(
                            //             context,
                            //             " Faster Turnaround",
                            //             AppTheme.of(context).title3.copyWith(
                            //                 fontWeight: FontWeight.w400),
                            //             AppTheme.of(context).appDevText),
                            //       ],
                            //     ),
                            //     Row(
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: [
                            //         heroContentText(
                            //             context,
                            //             String.fromCharCode(0x2756),
                            //             AppTheme.of(context).title3.copyWith(
                            //                 fontWeight: FontWeight.w400),
                            //             AppTheme.of(context).appDevText),
                            //         heroContentText(
                            //             context,
                            //             " Quality Control for each creative",
                            //             AppTheme.of(context).title3.copyWith(
                            //                 fontWeight: FontWeight.w400),
                            //             AppTheme.of(context).appDevText),
                            //       ],
                            //     )
                            //   ],
                            // ),
                          ],
                        ),
                      ),
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
