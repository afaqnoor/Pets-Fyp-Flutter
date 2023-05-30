import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "1. User Agreement:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Outlining the terms of use, eligibility criteria, and user responsibilities.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "2. Account Creation:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          " Information regarding the process of creating an account, maintaining login credentials, and protecting account security.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "3. Service Description:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Details about the services offered by the app, such as pet adoption, pet sitting, grooming, veterinary services, and other related features.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "4. Privacy Policy:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Information about how user data is collected, stored, and used. This section may also explain the use of cookies or other tracking technologies.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "5. Payment and Billing:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "If the app involves monetary transactions, the terms may specify payment methods, fees, refunds, and subscription terms.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "6. User Conduct:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Guidelines on appropriate behavior, restrictions on abusive or illegal activities, and consequences for violating the terms.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "7. Intellectual Property:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Details about the ownership and usage of content, trademarks, logos, and copyrights associated with the app.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "8. Liability and Disclaimers:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Clarification of the app's limitations of liability, warranties, and disclaimers of responsibility for any damages or losses incurred while using the app.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "9. Termination:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Circumstances under which the app may terminate or suspend user accounts, and the process for resolving disputes or filing complaints.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
