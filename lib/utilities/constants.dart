// ignore_for_file: prefer_const_constructors

import 'package:animations/animations.dart';
import 'package:chotcut/screens/signIn/signIn.dart';
import 'package:chotcut/screens/signUp/signUp.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kSECRET_KEY = "sk_test_414a941f5dd0feeca0465bf86813cf5d830e562f";

// Widget buildNumberField(String text) {
//   final color = Colors.white;

//   return TextField(
//     keyboardType: TextInputType.number,
//     style: TextStyle(
//       color: Color(0xFFF7F7F7),
//     ),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//       hintText: text,
//       hintStyle: TextStyle(
//           color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
//       filled: true,
//       fillColor: Color(0xFFF7F7F7),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: Color(0xFFF7F7F7)),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: Color(0xFFF7F7F7)),
//       ),
//     ),
//   );
// }
bool _isPassHidden = true;
final emailControllerr = TextEditingController();
final passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();
late String _email;
late String _password;

List<String> searchValues = [];

bool validateEmail(String value) {
  bool _msg;
  RegExp regex = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  if (value.isEmpty) {
    // _msg = "Your username is required";
    _msg = false;
  } else if (!regex.hasMatch(value)) {
    // _msg = "Please provide a valid emal address";
    _msg = false;
  }
  return true;
}

final detailsPageTransitionType = ContainerTransitionType.fade;

Widget buildTextField(String text) {
  final color = Colors.white;

  return TextField(
    keyboardType: TextInputType.name,
    style: TextStyle(
      color: Color(0xFF10151A),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

Widget buildVendorSearchField(String text) {
  final color = Colors.white;

  return TextField(
    style: TextStyle(
      color: Color(0xFFF7F7F7),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      prefixIcon: Icon(
        Icons.search_rounded,
        color: Color(0xFFBABABA),
      ),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

Widget buildSearchField(String text, Function(String) onSubmit, control) {
  final color = Colors.white;

  return TextField(
    onSubmitted: onSubmit,
    controller: control,
    style: TextStyle(
      color: Color(0xFF10151A),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      suffixIcon: Icon(
        Icons.search_rounded,
        color: Color(0xFFBABABA),
      ),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

Widget buildRangeField(String text) {
  final color = Colors.white;

  return TextField(
    style: TextStyle(
      color: Color(0xFFF7F7F7),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

AnimatedContainer buildDot({int? index, bool? isActive}) {
  int currentPage = 0;
  return AnimatedContainer(
    duration: Duration(milliseconds: 2),
    margin: EdgeInsets.only(right: 9),
    // duration: kAnimationDuration,
    height: 4,
    width: 6,
    decoration: BoxDecoration(
      color: currentPage == index ? Color(0xffFF0000) : Colors.white,
      borderRadius: BorderRadius.circular(3),
    ),
  );
}

Row subTitle(
    {required String title,
    required Color color,
    required VoidCallback onTapped}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: GoogleFonts.ubuntu(
          fontSize: 17,
          color: Color(0xff343A40),
          fontWeight: FontWeight.w700,
        ),
      ),
      GestureDetector(
        onTap: onTapped,
        child: Row(
          children: [
            Text(
              "More",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xffB0B0B0),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Row subTitle2({
  required String title,
  required Color color,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: GoogleFonts.ubuntu(
          fontSize: 17,
          color: Color(0xff343A40),
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}

Widget buildMenuItem({
  required String text,
  required Image image,
  required Icon icon,
  required VoidCallback onClicked,
}) {
  final color = Color(0xFF10151A);

  return Column(
    children: [
      ListTile(
        leading: icon,
        title: Text(
          text,
          style: TextStyle(
              fontSize: 17, color: color, fontWeight: FontWeight.w400),
        ),
        onTap: onClicked,
      ),
      Divider(
        color: Color(0xFFF5F5F5),
        // color: Colors.grey,
        thickness: 1,
        height: 0,
      )
    ],
  );
}

Widget buttonWidget(
    {required VoidCallback buttonAction,
    required Color buttonColor,
    required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(Radius.circular(5)),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),
      ),
    ),
  );
}

Widget signUpButtonWidget(
    {required VoidCallback buttonAction,
    required Color buttonColor,
    required String img,
    required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(Radius.circular(5)),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          SizedBox(
            width: 13.5,
          ),
          Text(
            buttonText,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}

Widget signUpOutlineButtonWidget(
    {required VoidCallback buttonAction,
    required String img,
    required String buttonText}) {
  return Material(
    color: Color(0xffFFFFFF),
    // elevation: 1,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Color(0xffFFFFFF).withOpacity(0.51)),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    child: MaterialButton(
      onPressed: buttonAction,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 20, child: Image.asset(img)),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            buttonText,
            style: TextStyle(
                color: Color(0xff343A40),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}

Widget outlineButtonWidget(
    {required VoidCallback buttonAction,
    // @required Color buttonColor,
    required String buttonText}) {
  return Material(
    color: Colors.transparent,
    // elevation: 1,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Color(0xFF10151A)),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Color(0xFF10151A),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

final RegExp emailvalidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9,]+\.[a-zA-Z])+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter a valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password too short";
const String kMatchPassError = "Passwords don't match";

Widget pinField(FocusNode fNode, Function(String) onChange) {
  return Container(
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.circular(5),
    //   color: Colors.red,
    // ),
    child: SizedBox(
      width: (75.75),
      height: 47,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xFFF7F7F7)),
          ),
        ),
        focusNode: fNode,
        obscureText: false,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color(0xFF10151A)),
        textAlign: TextAlign.center,
        onChanged: onChange,
      ),
    ),
  );
}

Widget fullName({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    autofocus: false,
    cursorColor: Color(0xFF10151A),
    style: TextStyle(
        fontSize: 15, color: Color(0xFF10151A), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,
    // onChanged: (tit) {
    //   if (tit.isNotEmpty) {
    //     setState(() {
    //       title = tit;
    //     });
    //   }
    // },
    maxLines: null,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.person_outline),
      contentPadding: EdgeInsets.only(right: 30),
      hintText: text,
      labelText: text,
      labelStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.,
      //   borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      // ),
    ),
  );
}

Widget cardName({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    autofocus: false,
    cursorColor: Color(0xFF10151A),
    style: TextStyle(
        fontSize: 15, color: Color(0xFF10151A), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,
    // onChanged: (tit) {
    //   if (tit.isNotEmpty) {
    //     setState(() {
    //       title = tit;
    //     });
    //   }
    // },
    maxLines: null,
    decoration: InputDecoration(
      // prefixIcon: Icon(Icons.person_outline),
      contentPadding: EdgeInsets.only(right: 30),
      hintText: text,
      labelText: text,
      labelStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.,
      //   borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      // ),
    ),
  );
}

Widget userName({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    autofocus: false,
    cursorColor: Color(0xFF10151A),
    style: TextStyle(
        fontSize: 15, color: Color(0xFF10151A), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,
    // onChanged: (tit) {
    //   if (tit.isNotEmpty) {
    //     setState(() {
    //       title = tit;
    //     });
    //   }
    // },
    maxLines: null,
    decoration: InputDecoration(
      //   contentPadding: EdgeInsets.only(left: 20),
      hintText: text,
      labelText: text,
      labelStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.,
      //   borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      // ),
    ),
  );
}

Widget buildAddressInputField({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    autofocus: false,
    cursorColor: Color(0xff090F47),
    style: TextStyle(
        fontSize: 15, color: Color(0xff090F47), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,
    // onChanged: (tit) {
    //   if (tit.isNotEmpty) {
    //     setState(() {
    //       title = tit;
    //     });
    //   }
    // },
    maxLines: null,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 13.5, vertical: 16),
      labelText: text,
      labelStyle: TextStyle(
          color: Color(0xff090F47), fontWeight: FontWeight.w400, fontSize: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xff090F47), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
    ),
  );
}

Widget buildNumberField({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    keyboardType: TextInputType.number,
    autofocus: false,
    cursorColor: Color(0xff090F47),
    style: TextStyle(
        fontSize: 15, color: Color(0xff090F47), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,

    maxLines: null,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(right: 30),
      labelText: text,
      labelStyle: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xff090F47), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
    ),
  );
}

Widget cardNumber({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    keyboardType: TextInputType.number,
    autofocus: false,
    cursorColor: Color(0xff090F47),
    style: TextStyle(
        fontSize: 15, color: Color(0xff090F47), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,

    maxLines: null,
    decoration: InputDecoration(
      suffixIcon: Icon(Icons.credit_card),
      contentPadding: EdgeInsets.only(right: 30),
      labelText: text,
      labelStyle: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xff090F47), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
    ),
  );
}

Widget cardCVV({
  required String text,
  TextEditingController? controller,
  // required Function(dynamic) onChange,
  // required Function(String) onSave,
  // required Function(String) validate
}) {
  return TextFormField(
    keyboardType: TextInputType.number,
    autofocus: false,
    cursorColor: Color(0xff090F47),
    style: TextStyle(
        fontSize: 15, color: Color(0xff090F47), fontWeight: FontWeight.w400),
    // onSaved: onSave,

    // onChanged: onChange,
    // validator: validate,
    controller: controller,

    maxLines: null,
    decoration: InputDecoration(
      suffixIcon: Icon(Icons.quiz_outlined),
      contentPadding: EdgeInsets.only(right: 30),
      labelText: text,
      labelStyle: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xff090F47), fontWeight: FontWeight.w400, fontSize: 15),
      filled: false,
      fillColor: Color(0xFFF7F7F7),
    ),
  );
}

Padding buildAddressSubTitle(String text, VoidCallback onPress) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF10151A)),
        ),
        TextButton.icon(
            onPressed: onPress,
            icon: Icon(
              Icons.add,
              color: Color(0xFF3E3E3E),
              size: 18,
            ),
            label: Text(
              "Add Address",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF3E3E3E)),
            ))
      ],
    ),
  );
}

List<Color> categoryColors = [
  // Color(0xFF3A953C1A),
  Color(0xFF3A953C),
  Color(0xFFBB2F48),
  Color(0xFF3C673D),
  Color(0xFFE75A21),
];

TextFormField buildEmailField(
    {required Function(String) validate,
    required Function(String) onSave,
    required Function(String) onChange,
    required bool pass,
    required TextInputType textInputType,
    required String text}) {
  return TextFormField(
    obscureText: pass,
    // onSaved: onSave,
    // onChanged: onChange,
    // validator: validate,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      fillColor: Color(0xfff7f7f7),
      filled: false,
      hintText: text,
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xffbababa),
      ),
    ),
  );
}

TextFormField buildTextFormField(
    {required Function(String) validate,
    required Function(String) onSave,
    required Function(String) onChange,
    required bool pass,
    required TextInputType textInputType,
    required String text}) {
  return TextFormField(
    obscureText: pass,
    // onSaved: onSave,
    // onChanged: onChange,
    // validator: validate,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      fillColor: Color(0xfff7f7f7),
      filled: true,
      hintText: text,
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xffbababa),
      ),
    ),
  );
}

TextFormField buildPasswordTextFormField(
    {
    //required Function(String) validate,
    // required Function(String) onSave,
    // required Function(String) onChange,
    required VoidCallback togglePasswordView,
    required bool pass,
    required TextInputType textInputType,
    required String text}) {
  return TextFormField(
    obscureText: pass,
    // onSaved: onSave,
    // onChanged: onChange,
    // validator: validate,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.lock_outline),
      fillColor: Color(0xfff7f7f7),
      filled: false,
      hintText: text,
      suffixIcon: InkWell(
        onTap: togglePasswordView,
        child: Icon(
          pass ? Icons.visibility : Icons.visibility_off_outlined,
          color: Color(0xff999999),
        ),
      ),
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xffbababa),
      ),
    ),
  );
}

TextFormField buildPassword(
    {
    //   required Function(String) validate,
    // required Function(String) onSave,
    // required Function(String) onChange,
    required VoidCallback togglePasswordView,
    required bool pass,
    required TextInputType textInputType,
    required String text}) {
  return TextFormField(
    obscureText: pass,
    // onSaved: onSave,
    // onChanged: onChange,
    // validator: validate,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      fillColor: Color(0xfff7f7f7),
      filled: false,
      hintText: text,
      suffixIcon: InkWell(
        onTap: togglePasswordView,
        child: Icon(
          pass ? Icons.visibility : Icons.visibility_off_outlined,
          color: Color(0xff999999),
        ),
      ),
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xffbababa),
      ),
    ),
  );
}

Text formTextTitle(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 15,
      color: Color(0xFF10151A),
      fontWeight: FontWeight.w700,
    ),
  );
}

Future<void> bottomModalSignUp(BuildContext context) {
  return showModalBottomSheet<void>(
    isDismissible: false,
    enableDrag: true,
    elevation: 10,
    barrierColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
    ),
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
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
          child: SignIn(),
        );
      });
    },
  );
}

// Future<void> bottomModal(BuildContext context) {
//   return showModalBottomSheet<void>(
//     isDismissible: false,
//     enableDrag: true,
//     elevation: 10,
//     barrierColor: Colors.transparent,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(25), topRight: Radius.circular(25)),
//     ),
//     context: context,
//     builder: (BuildContext context) {
//       return StatefulBuilder(
//           builder: (BuildContext context, StateSetter setModalState) {
//         return AnimatedContainer(
//           height: MediaQuery.of(context).size.height * 0.5,
//           duration: Duration(milliseconds: 1000),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(50),
//               topRight: Radius.circular(50),
//             ),
//             color: Color(0xffF2F2F2),
//           ),
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//             child: Form(
//               //  key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome Back!",
//                             style: GoogleFonts.ubuntu(
//                                 fontSize: 24,
//                                 color: Color(0xff343A40),
//                                 fontWeight: FontWeight.w700),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       fullName(
//                         text: "Username",
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       buildPasswordTextFormField(
//                         text: "Password",
//                         textInputType: TextInputType.visiblePassword,
//                         togglePasswordView: () {
//                           setState(() {
//                             _isPassHidden = !_isPassHidden;
//                           });
//                         },
//                         pass: _isPassHidden,
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 16.0),
//                     child: buttonWidget(
//                         buttonText: "Login",
//                         buttonColor: Colors.red,
//                         buttonAction: () {}),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         height: 1,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             color: Color(0xffB0B0B0).withOpacity(0.5)),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Text(
//                         "or",
//                         style: TextStyle(
//                             fontSize: 13,
//                             color: Color(0xffB0B0B0),
//                             fontWeight: FontWeight.w400),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         height: 1,
//                         width: 160,
//                         decoration: BoxDecoration(
//                             color: Color(0xffB0B0B0).withOpacity(0.5)),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 16.0),
//                     child: signUpOutlineButtonWidget(
//                       img: "assets/google.png",
//                       buttonText: "Continue with Google",
//                       buttonAction: () {},
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Center(
//                     child: InkWell(
//                       onTap: () {},
//                       child: Text(
//                         "Don’t have an account? Sign Up",
//                         style: GoogleFonts.poppins(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xff343A40).withOpacity(0.6),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       });
//     },
//   );
// }

Future<void> bottomModalSignUp1(BuildContext context) {
  return showModalBottomSheet<void>(
    isDismissible: true,
    enableDrag: true,
    elevation: 10,
    barrierColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
    ),
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
        return AnimatedContainer(
          height: MediaQuery.of(context).size.height * 0.30,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: buttonWidget(
                      buttonText: "Sign Up With Email",
                      buttonColor: Color(0xffF11700),
                      buttonAction: () {
                        Navigator.pop(context);

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
                          builder: (context) {
                            return SingleChildScrollView(
                              child: SignUp(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: signUpOutlineButtonWidget(
                      img: "assets/google.png",
                      buttonText: "Continue with Google",
                      buttonAction: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 1,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xffB0B0B0).withOpacity(0.5)),
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
                            color: Color(0xffB0B0B0).withOpacity(0.5)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Use Chotcut as a guest",
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
          ),
        );
      });
    },
  );
}
