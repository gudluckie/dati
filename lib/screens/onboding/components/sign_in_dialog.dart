import 'package:dat/screens/onboding/components/sign_up_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'sign_in_form.dart';

void _openTermsAndConditions() {
  // Open the terms and conditions page or show a dialog
  print('Opening Terms and Conditions');
}

void _openPrivacyPolicy() {
  // Open the privacy policy page or show a dialog
  print('Opening Privacy Policy');
}

void showCustomDialog(BuildContext context, {required ValueChanged onValue}) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          height: 670,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.95),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 30),
                blurRadius: 60,
              ),
              const BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 30),
                blurRadius: 60,
              ),
            ],
          ),
          child: Scaffold(
            // backgroundColor: Colors.transparent,
            body: Stack(
              clipBehavior: Clip.none,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 34,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Lorem ipsum dolor sit amet,.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SignInForm(),
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Text(
                          "Sign up with Email or Phone Number",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              showSignUpDialog(
                                context,
                                onValue: (_) {},
                              );
                            },
                            padding: EdgeInsets.zero,
                            icon: SvgPicture.asset(
                              "assets/icons/email_box.svg",
                              height: 44,
                              width: 44,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              showSignUpDialog(
                                context,
                                onValue: (_) {},
                              );
                            },
                            padding: EdgeInsets.zero,
                            icon: SvgPicture.asset(
                              "assets/icons/phone.svg",
                              height: 34,
                              width: 34,
                            ),
                          ),
                          // IconButton(
                          //   onPressed: () {},
                          //   padding: EdgeInsets.zero,
                          //   icon: SvgPicture.asset(
                          //     "assets/icons/google_box.svg",
                          //     height: 64,
                          //     width: 64,
                          //   ),
                          // ),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15)),
                      const Column(
                        children: [
                          Text(
                            'By clicking Sign Up, you agree to our',
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: _openTermsAndConditions,
                                  child: Text(
                                    'Terms and Condition',
                                    textAlign: TextAlign.center,
                                  )),
                              Text(
                                'and',
                                textAlign: TextAlign.center,
                              ),
                              TextButton(
                                  onPressed: _openPrivacyPolicy,
                                  child: Text(
                                    'Privacy Policy',
                                    textAlign: TextAlign.center,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: -48,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      // if (anim.status == AnimationStatus.reverse) {
      //   tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
      // } else {
      //   tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
      // }

      tween = Tween(begin: const Offset(0, -1), end: Offset.zero);

      return SlideTransition(
        position: tween.animate(
          CurvedAnimation(parent: anim, curve: Curves.easeInOut),
        ),
        // child: FadeTransition(
        //   opacity: anim,
        //   child: child,
        // ),
        child: child,
      );
    },
  ).then(onValue);
}
