import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Privecy extends StatelessWidget {
  const Privecy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'At Pets Care, we are committed to protecting the privacy and personal information of our users. This Privacy Policy outlines how we collect, use, and safeguard the information you provide to us through our website, mobile applications, and other services. By using Pets Care, you consent to the practices described in this policy.',
                  style: GoogleFonts.acme(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "1. Information We Collect:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Personal Information: We may collect personal information such as your name, email address, phone number, and location when you sign up for an account, submit a contact form, or engage in certain activities on our platform. Pet Information: To provide personalized services, we may collect information about your pets, including their names, breeds, ages, medical history, and dietary preferences. This information is used to offer tailored content and recommendations. Usage Information: We collect data on how you interact with our platform, such as your browsing activities, searches, preferences, and interactions with other users or content. This helps us improve our services and provide a better user experience.Device and Log Information: We may collect information about the device you use to access our services, including the device type, operating system, browser type, IP     address, and log files. This data is used for system administration, security, and troubleshooting purposes.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "2. Use of Information:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Provide and Improve Services: We use the information we collect to deliver and enhance our services, personalize your experience, and respond to your requests and inquiries.Communication: We may use your contact information to send you important updates, notifications, newsletters, and promotional materials. You can opt out of receiving marketing communications at any time.Analytics and Insights: We analyze user data to understand trends, preferences, and usage patterns. This helps us improve our services, develop new features, and make informed business decisions.Legal Compliance: We may use and disclose your information as required by applicable laws, regulations, or legal processes, or to protect our rights, property, or safety. \n",
                      style: GoogleFonts.dancingScript())
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "3. Data Sharing:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in delivering our services, such as hosting, analytics, customer support, and marketing. These providers are contractually bound to safeguard your information and use it only for authorized purposes.User Interaction: Certain features of our platform may allow you to interact and share information with other users. Please be aware that any information you disclose in these interactions becomes publicly available, and we cannot control how other users may use or share that information.Legal Requirements: We may disclose your information if required by law, court order, or governmental regulation, or if we believe it is necessary to protect our rights, property, or safety, or the rights, property, or safety of others.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "4. Data Security:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "We employ industry-standard security measures to protect your information from unauthorized access, loss, misuse, or alteration. However, no data transmission over the internet or storage method is completely secure, and we cannot guarantee absolute security.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "5. Children's Privacy:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "Our services are not intended for children under the age of 13. We do not knowingly collect personal information from children. If we become aware that we have inadvertently collected personal information from a child under 13, we will take steps to delete the information as soon as possible.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "6.Changes to the Privacy Policy:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "We may update this Privacy Policy from time to time. Any changes will be posted on this page, and the last updated date will be revised accordingly. We encourage you to review the Privacy Policy periodically for any updates or changes.\n",
                      style: GoogleFonts.dancingScript()),
                ])),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "7.Contact Us:\n",
                    style: GoogleFonts.anton(),
                  ),
                  TextSpan(
                      text:
                          "If you have any questions, concerns, or requests regarding this Privacy Policy or our data practices\n",
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
