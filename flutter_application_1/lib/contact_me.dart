import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_buttons.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Flexible(
        child: Column(
          children: [
            FadeInDown(
              child: RichText(
                text: TextSpan(
                  text: 'Contact',
                  style: AppTextStyles.AboutMeHeading(),
                  children: [
                    TextSpan(text: 'Me', style: AppTextStyles.AboutMeMe())
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      decoration: buildInputDecoration(hintText: 'Full Name'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      decoration: buildInputDecoration(hintText: 'Email'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      decoration:
                          buildInputDecoration(hintText: 'Mobile Number'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      decoration:
                          buildInputDecoration(hintText: 'Email Subject'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      maxLines: 15,
                      decoration:
                          buildInputDecoration(hintText: 'Your Message'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppButtons.buildMaterialButton(
                buttonName: 'Send Message',
                onTap: () {
                  _launchEmail();
                }),
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.HintTextStyle(),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      filled: true,
      focusColor: AppColors.bgColor2,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }
}

void _launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'wambua.m@outlook.com',
    queryParameters: {
      'subject': 'Contact Form Submission',
      'body': _composeEmailBody(),
    },
  );

  if (await canLaunchUrlString(emailLaunchUri.toString())) {
    await launchUrlString(emailLaunchUri.toString());
  } else {
    // Handle error
    print('Could not launch email');
  }
}

String _composeEmailBody() {
  // Create the body of the email using the form fields
  // You can access the form field values and format the email body as needed
  return '''
      Full Name: [Full Name Value]
      Email: [Email Value]
      Mobile Number: [Mobile Number Value]
      Email Subject: [Email Subject Value]
      Your Message: [Your Message Value]
    ''';
}


/*
class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(children: [
        FadeInDown(
            child: RichText(
          text: TextSpan(
              text: 'Contact',
              style: AppTextStyles.AboutMeHeading(),
              children: [
                TextSpan(text: 'Me', style: AppTextStyles.AboutMeMe())
              ]),
        )),
        Row(
          children: [
   "         Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration: buildInputDecoration(hintText: 'Full Name')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration: buildInputDecoration(hintText: 'Email')),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration:
                        buildInputDecoration(hintText: 'Mobile Number')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    decoration:
                        buildInputDecoration(hintText: 'Email Subject')),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                    maxLines: 15,
                    decoration: buildInputDecoration(hintText: 'Your Message')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        AppButtons.buildMaterialButton(buttonName: 'Send Message', onTap: () {})
      ]),
    );
  }
}

InputDecoration buildInputDecoration({required String hintText}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: AppTextStyles.HintTextStyle(),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    filled: true,
    focusColor: AppColors.bgColor2,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  );
}
*/
