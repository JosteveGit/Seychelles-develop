import 'package:flutter/material.dart';
import 'package:grantconsent/screens/sign_up.dart';
import 'package:grantconsent/screens/sign_in.dart';
import 'package:grantconsent/utilities/constants.dart';
import 'package:grantconsent/utilities/custom_widgets.dart';
import 'package:grantconsent/utilities/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: kGetStartedScreenBackground,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(34, 34, 34, 0.2), BlendMode.overlay),
            ),
          ),
          constraints: BoxConstraints.tight(kScreenSize),
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(
                flex: 3,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(child: GrantConsentLogo(LogoType.largeWithoutText), tag: "logoHeroTag",),
                  Text(
                    'CONSENT',
                    style: GoogleFonts.quicksand(
                      fontSize: 27,
                      color: kButtonTextColor2,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                'Welcome',
                style: kWelcomeHeadingTextStyle,
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                  'Get a safe, sealed digital copy of consents. Don’t act on promises alone. Collect proof. Digitise your consent, Yes is Yes and No is No ',
                  style: kBody1TextStyle),
              Spacer(
                flex: 2,
              ),
              UserActionButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                label: 'Sign Up',
              ),
              UserActionButton(
                onTap: () {
         Navigator.push(context,
          MaterialPageRoute(builder: (context) => SignIn()));

                },
                label: 'Sign In',
                filled: false,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Center(
                  child: Text(
                    'Terms and Conditions',
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
