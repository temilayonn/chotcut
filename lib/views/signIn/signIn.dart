// ignore_for_file: file_names, prefer_const_constructors

import 'package:chotcut/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPassHidden = true;
  final emailControllerr = TextEditingController();
  final passwordController = TextEditingController();
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Form(
        //  key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: GoogleFonts.ubuntu(
                          fontSize: 24,
                          color: Color(0xff343A40),
                          fontWeight: FontWeight.w700),
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
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: buttonWidget(
                  buttonText: "Login",
                  buttonColor: Colors.red,
                  buttonAction: () {}),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 1,
                  width: 150,
                  decoration:
                      BoxDecoration(color: Color(0xffB0B0B0).withOpacity(0.5)),
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
                  decoration:
                      BoxDecoration(color: Color(0xffB0B0B0).withOpacity(0.5)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
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
                    color: Color(0xff343A40).withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
