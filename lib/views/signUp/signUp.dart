// ignore_for_file: file_names, prefer_const_constructors

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  late FocusNode pin5FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  bool _isPassHidden = true;
  final emailControllerr = TextEditingController();
  final passwordController = TextEditingController();
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: MediaQuery.of(context).size.height * 0.5,
      duration: Duration(milliseconds: 1000),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Color(0xffF2F2F2),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Form(
          //  key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create your account",
                          style: GoogleFonts.ubuntu(
                            fontSize: 24,
                            color: Color(0xff343A40),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    userName(
                      text: "Your Name",
                    ),
                    SizedBox(height: 10),
                    buildNumberField(
                      text: "Mobile Number",
                    ),
                    SizedBox(height: 10),
                    buildEmailField(
                      pass: false,
                      text: "Email Address",
                      validate: (value) {},
                      onChange: (value) {},
                      onSave: (newValue) => _email = newValue,
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    buildPassword(
                      text: "Password",
                      textInputType: TextInputType.visiblePassword,
                      togglePasswordView: () {
                        setState(() {
                          _isPassHidden = !_isPassHidden;
                        });
                      },
                      pass: _isPassHidden,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: buttonWidget(
                    buttonText: "Create your account",
                    buttonColor: Color(0xffF11700),
                    buttonAction: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        isDismissible: true,
                        enableDrag: true,
                        elevation: 10,
                        barrierColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 32),
                            height:
                                MediaQuery.of(context).size.height / 100 * 45,
                            //   child: otpForm(context),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Enter verification code",
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 24,
                                        color: Color(0xff343A40),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "We just sent you a verification code via phone \n+234 813 745 7868",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffB0B0B0),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 45),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    pinField(
                                      pin2FocusNode,
                                      (value) {
                                        nextField(
                                            value: value,
                                            focusNode: pin2FocusNode);
                                      },
                                    ),
                                    pinField(
                                      pin2FocusNode,
                                      (value) {
                                        nextField(
                                            value: value,
                                            focusNode: pin3FocusNode);
                                      },
                                    ),
                                    pinField(
                                      pin3FocusNode,
                                      (value) {
                                        nextField(
                                            value: value,
                                            focusNode: pin4FocusNode);
                                      },
                                    ),
                                    pinField(
                                      pin4FocusNode,
                                      (value) {
                                        nextField(
                                            value: value,
                                            focusNode: pin5FocusNode);
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                buttonWidget(
                                  buttonText: "Submit Code",
                                  buttonColor: Color(0xffF11700),
                                  buttonAction: () {
                                    Navigator.pop(context);
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25)),
                                      ),
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100 *
                                              40,
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 150,
                                                    child: Image(
                                                      image: AssetImage(
                                                          "assets/success.png"),
                                                    ),
                                                  ),
                                                  SizedBox(height: 25),
                                                  Text(
                                                    "Phone Number \nVerified",
                                                    style: GoogleFonts.ubuntu(
                                                      fontSize: 24,
                                                      color: Color(0xff343A40),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    //textAlign: TextAlign.right,
                                                  ),
                                                  SizedBox(height: 15),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            30.0),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: buttonWidget(
                                                          buttonText:
                                                              "Start Shopping",
                                                          buttonColor:
                                                              Color(0xffF11700),
                                                          buttonAction: () {
                                                            Navigator.push(
                                                              context,
                                                              CustomPageRoute(
                                                                child:
                                                                    HomeScreen(),
                                                                direction:
                                                                    AxisDirection
                                                                        .left,
                                                              ),
                                                            );
                                                          }),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "The verification code will expire in",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffB0B0B0),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TweenAnimationBuilder(
                                      tween: Tween(begin: 60.0, end: 0),
                                      duration: Duration(seconds: 120),
                                      builder: (context, value, child) => Text(
                                        "00:${value}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xffB0B0B0)),
                                      ),
                                      onEnd: () {},
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: Text(
                                    "Resend Code",
                                    style: GoogleFonts.overpass(
                                      fontSize: 16,
                                      color: Color(0xff343A40),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 16),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Already have an account?  Login",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff343A40).withOpacity(0.6),
                    ),
                  ),
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
