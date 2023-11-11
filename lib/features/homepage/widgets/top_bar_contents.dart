import 'package:flutter/material.dart';
import 'package:sbox_web/core/themes/themes.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({
    super.key,
  });

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  String dropdownvalueService = 'Services';
  String dropdownvalueStartup = 'StartUps';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double? w;
    if (screenSize.width >= 980) {
      w = screenSize.width * 0.1;
    } else {
      w = screenSize.width * 0.05;
    }

    return Container(
      color: AppTheme.of(context).primaryColor.withOpacity(0.8),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w, vertical: 20),
        child: Row(
          children: [
            SizedBox(
              height: 120,
              width: 80,
              child: Image.asset("assets/images/sbox_logo.png"),
            ),
            // Expanded(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       DropdownButton(
            //         value: dropdownvalueService,
            //         underline: const SizedBox(),
            //         icon: Icon(
            //           Icons.keyboard_arrow_down,
            //           color: AppTheme.of(context).whiteColor,
            //         ),
            //         items: [
            //           DropdownMenuItem(
            //             value: dropdownvalueService,
            //             child: Text(
            //               "Services",
            //               style: TextStyle(
            //                   color: AppTheme.of(context).whiteColor),
            //             ),
            //           ),
            //           DropdownMenuItem(
            //             value: "Home",
            //             child: Text(
            //               "Home",
            //               style: TextStyle(
            //                   color: AppTheme.of(context).whiteColor),
            //             ),
            //           ),
            //         ],
            //         onChanged: (String? newValue) {
            //           setState(() {
            //             dropdownvalueService = newValue!;
            //           });
            //         },
            //       ),
            //       SizedBox(width: screenSize.width / 20),
            //       DropdownButton(
            //         value: dropdownvalueStartup,
            //         underline: const SizedBox(),
            //         icon: Icon(
            //           Icons.keyboard_arrow_down,
            //           color: AppTheme.of(context).whiteColor,
            //         ),
            //         items: [
            //           DropdownMenuItem(
            //             value: dropdownvalueStartup,
            //             child: Text(
            //               "Startups",
            //               style: TextStyle(
            //                   color: AppTheme.of(context).whiteColor),
            //             ),
            //           ),
            //           DropdownMenuItem(
            //             value: "MNC",
            //             child: Text(
            //               "MNC",
            //               style: TextStyle(
            //                   color: AppTheme.of(context).whiteColor),
            //             ),
            //           ),
            //         ],
            //         onChanged: (String? newValue) {
            //           setState(() {
            //             dropdownvalueStartup = newValue!;
            //           });
            //         },
            //       ),
            //       SizedBox(width: screenSize.width / 20),
            //       InkWell(
            //         onTap: () {},
            //         child: Text(
            //           "Martketing teams",
            //           style:
            //               TextStyle(color: AppTheme.of(context).whiteColor),
            //         ),
            //       ),
            //       SizedBox(width: screenSize.width / 20),
            //       InkWell(
            //         onTap: () {},
            //         child: Text(
            //           "Contact Us",
            //           style:
            //               TextStyle(color: AppTheme.of(context).whiteColor),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8)),
            //       backgroundColor: AppTheme.of(context).whiteColor,
            //       elevation: 2,
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 24,
            //         vertical: 14,
            //       )),
            //   child: Text(
            //     "Login",
            //     style: AppTheme.of(context)
            //         .bodyText1
            //         .override(color: AppTheme.of(context).primaryAppText),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
