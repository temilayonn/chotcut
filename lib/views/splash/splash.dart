// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isPassHidden = true;
  final emailControllerr = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/splash.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80, top: 60),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Faster \nthan you!',
                        style: GoogleFonts.ubuntu(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ('\n\nAll order gets delivered in 1hour.'),
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 170,
                    height: 50,
                    child: buttonWidget(
                      buttonText: "Log in",
                      buttonColor: Colors.white.withOpacity(0.3),
                      buttonAction: () {
                        showModalBottomSheet<void>(
                          isDismissible: false,
                          enableDrag: true,
                          elevation: 10,
                          barrierColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder:
                                (BuildContext context,
                                    StateSetter setModalState) {
                              return AnimatedContainer(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                duration: Duration(milliseconds: 1000),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                  color: Color(0xffF2F2F2),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 16),
                                  child: Form(
                                    //  key: _formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Welcome Back!",
                                                  style: GoogleFonts.ubuntu(
                                                      fontSize: 24,
                                                      color: Color(0xff343A40),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            fullName(
                                              text: "Username",
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            buildPasswordTextFormField(
                                              text: "Password",
                                              textInputType:
                                                  TextInputType.visiblePassword,
                                              togglePasswordView: () {
                                                setState(() {
                                                  _isPassHidden =
                                                      !_isPassHidden;
                                                });
                                              },
                                              pass: _isPassHidden,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 270),
                                              child: Text(
                                                "Forgot Password?",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xffB0B0B0),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16.0),
                                          child: buttonWidget(
                                              buttonText: "Login",
                                              buttonColor: Colors.red,
                                              buttonAction: () {
                                                Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                    child: HomeScreen(),
                                                    direction:
                                                        AxisDirection.right,
                                                  ),
                                                );
                                              }),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 1,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffB0B0B0)
                                                      .withOpacity(0.5)),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "or",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xffB0B0B0),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              height: 1,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffB0B0B0)
                                                      .withOpacity(0.5)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16.0),
                                          child: signUpOutlineButtonWidget(
                                            img: "assets/google.png",
                                            buttonText: "Continue with Google",
                                            buttonAction: () {},
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Don’t have an account? Sign Up",
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff343A40)
                                                    .withOpacity(0.6),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 50,
                    child: buttonWidget(
                      buttonText: "Get Started",
                      buttonColor: Color(0xffF11700),
                      buttonAction: () {
                        bottomModalSignUp1(context);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
