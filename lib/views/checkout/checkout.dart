// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_this

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/widgets/successWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  dynamic index = 0;
  int val = -1;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Checkout",
                      style: TextStyle(
                          color: Color(0xff343A40),
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                          color: Color(0xff343A40).withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.add,
                    color: Color(0xff343A40),
                  ),
                  label: Text(
                    "Add Address",
                    style: TextStyle(
                        color: Color(0xff343A40),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   CustomPageRoute(
                    //     child: StoresList(),
                    //     direction: AxisDirection.up,
                    //   ),
                    // );
                  },
                ),
              ],
            ),
            // Expanded(
            //   child: ListView.separated(
            //     itemCount: 2,
            //     itemBuilder: (BuildContext, int) {
            //       return Container(
            //         height: 90,
            //         width: 380,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(7),
            //           border: Border.all(
            //             color: Color(0xff090F47).withOpacity(0.10),
            //           ),
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Row(
            //                   children: [
            //                     Radio(
            //                       activeColor: Color(0xffE75A21),
            //                       value: 0,
            //                       groupValue: this._radioVal,
            //                       onChanged: (value) {
            //                         // setState(() => this._radioVal = value);
            //                       },
            //                     ),
            //                     SizedBox(
            //                       width: 24,
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       // ignore: prefer_const_literals_to_create_immutables
            //                       children: [
            //                         // SizedBox(
            //                         //   height: 10,
            //                         // ),
            //                         Text(
            //                           "Orange Drive, Elebu Akoto",
            //                           style: TextStyle(
            //                             fontSize: 19,
            //                             color: Color(0xff343A40),
            //                             fontWeight: FontWeight.w700,
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           height: 5,
            //                         ),
            //                         Text(
            //                           "+234 813 745 7868",
            //                           style: GoogleFonts.averiaSansLibre(
            //                             fontSize: 17,
            //                             color: Color(0xff090F47),
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //                 Icon(
            //                   Icons.edit_outlined,
            //                   color: Color(0xff343A40),
            //                 )
            //                 // IconButton(
            //                 //     onPressed: () {}, icon: Icon(Icons.edit_outlined))
            //               ],
            //             ),
            //             SizedBox(
            //               height: 29,
            //             ),
            //           ],
            //         ),
            //       );
            //     },
            //     separatorBuilder: (BuildContext context, int index) {
            //       return SizedBox(height: 10);
            //     },
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: Color(0xff090F47).withOpacity(0.10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: index,
                            activeColor: Color(0xFFE75A21),
                            onChanged: (value) {
                              setState(() {
                                index = value;
                              });
                            },
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // SizedBox(
                              //   height: 10,
                              // ),
                              Text(
                                "Orange Drive, Elebu Akoto",
                                style: GoogleFonts.averiaSansLibre(
                                  fontSize: 19,
                                  color: Color(0xff343A40),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "+234 813 745 7868",
                                style: GoogleFonts.averiaSansLibre(
                                  fontSize: 15,
                                  color: Color(0xff090F47),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.edit_outlined,
                        color: Color(0xff343A40),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 29,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Payment Method",
                      style: GoogleFonts.averiaSansLibre(
                          color: Color(0xff343A40).withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.add,
                    color: Color(0xff343A40),
                  ),
                  label: Text(
                    "Add Card",
                    style: TextStyle(
                        color: Color(0xff343A40),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
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
                            (BuildContext context, StateSetter setModalState) {
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              child: Form(
                                //  key: _formKey,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          "Add new card",
                                          style: GoogleFonts.ubuntu(
                                            fontSize: 24,
                                            color: Color(0xff343A40),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        cardName(
                                          text: "Name on card",
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        cardNumber(text: "Card number"),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        buildNumberField(text: "Expiry Date"),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        cardCVV(text: "CVV"),
                                        SizedBox(
                                          height: 16,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Set as default payment method",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff343A40)
                                                .withOpacity(0.6),
                                          ),
                                        ),
                                        Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          activeColor: Color(0xFFE75A21),
                                          checkColor: Color(0xFFFFFFFF),
                                          // value: _item.isSelected ? true : false,
                                          value: true,
                                          tristate: false,
                                          onChanged: (value) {},
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: buttonWidget(
                                          buttonText: "ADD CARD",
                                          buttonColor: Color(0xffF11700),
                                          buttonAction: () {}),
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
              ],
            ),
            Container(
              height: 185,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: Color(0xff090F47).withOpacity(0.10),
                ),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                color: Color(0xff00A051).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // child: Image(
                              //   image: AssetImage("assets/mastercard.jpeg"),
                              // ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Credit card",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff10151a),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Radio(
                          value: 0,
                          groupValue: index,
                          activeColor: Color(0xFFE75A21),
                          onChanged: (value) {
                            setState(() {
                              index = value;
                            });
                          },
                        ),
                        // Radio(
                        //   activeColor: Color(0xffE75A21),
                        //   value: 0,
                        //   groupValue: this._radioVal,
                        //   onChanged: (value) {
                        //     //   setState(() => this._radioVal = value);
                        //   },
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                  color: Color(0xffC4C4C4).withOpacity(0.45),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.house_outlined)),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Bank Transfer",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff10151a),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Radio(
                          activeColor: Color(0xffE75A21),
                          value: 0,
                          groupValue: val,
                          onChanged: (value) {
                            // setState(() => this._radioVal = value);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                color: Color(0xffC4C4C4).withOpacity(0.45),
                                borderRadius: BorderRadius.circular(10),
                                // image: DecorationImage(
                                //     image: AssetImage(
                                //       "assets/mastecardlogo.png",
                                //     ),
                                //     fit: BoxFit.cover),
                              ),
                              child: Icon(Icons.credit_card),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Chotcut Wallet",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff10151a),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Radio(
                          activeColor: Color(0xffE75A21),
                          value: 0,
                          groupValue: val,
                          onChanged: (value) {
                            // setState(() => this._radioVal = value);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 380,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Payment Summary",
                            style: GoogleFonts.ubuntu(
                                color: Color(0xff343A40),
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Order Total",
                        style: GoogleFonts.overpass(
                            color: Color(0xff343A40),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "N3,300",
                        style: GoogleFonts.overpass(
                            color: Color(0xff343A40),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Items Discount",
                        style: GoogleFonts.overpass(
                            color: Color(0xff343A40),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "- N300",
                        style: GoogleFonts.overpass(
                            color: Color(0xff343A40),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Shipping",
                        style: GoogleFonts.overpass(
                            color: Color(0xff343A40),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Free",
                        style: GoogleFonts.overpass(
                            color: Color(0xff343A40),
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 20,
            ),

            Spacer(),
            Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF11700)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Pay Now',
                      style: GoogleFonts.overpass(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: buttonWidget(
                        buttonAction: () {
                          Navigator.push(
                            context,
                            CustomPageRoute(
                              child: SuccessSCreen(),
                              direction: AxisDirection.up,
                            ),
                          );
                          //  _processPayment(context);
                        },
                        buttonColor: Color(0xff000000).withOpacity(0.2),
                        buttonText: "N2,500"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
//   void _processPayment(context) {
//     try {
//       PaystackPayManager(context: context)
//         ..setSecretKey(kSECRET_KEY)
// // Your company Image
//         ..setCompanyAssetImage(Image(
//           image: AssetImage("assets/landing_image.png"),
//         ))
//         ..setAmount(
//             100000) // you need to add two zeros at the end e.g 100000 = N1,000.00
// // you can set your own unique transaction reference, here am using timestamp
//         ..setReference(DateTime.now().millisecondsSinceEpoch.toString())
//         ..setCurrency(
//             "NGN") // Set currency, the platform only has three currencies, when registering the
//         // list of countries listed is the currency that is available for you to use
//         ..setEmail("p.pamd18@gmail.com") // user email address and information
//         ..setFirstName("Aduaba")
//         ..setLastName("Fresh")
//         ..setMetadata(
//           {
//             "custom_fields": [
//               {
//                 "value": "Aduaba", // set this your company name
//                 "display_name": "Payment_to",
//                 "variable_name": "Payment_to"
//               }
//             ]
//           },
//         )
//         ..onSuccesful(
//           _onPaymentSuccessful,
//         )
//         ..onPending(_onPaymentPending)
//         ..onFailed(_onPaymentFailed)
//         ..onCancel(_onCancel)
//         ..initialize();
//     } catch (error) {
//       print('Payment Error ==> $error');
//     }
//   }
//   void _onPaymentSuccessful(Transaction transaction) {
//     print('Transaction succesful');

//     // Navigator.push(
//     //   context,
//     //   MaterialPageRoute(builder: (BuildContext context) => ConfirmationTab()),
//     // );
//     print(
//         "Transaction message ==> ${transaction.message}, Ref ${transaction.refrenceNumber}");
//   }

//   void _onPaymentPending(Transaction transaction) {
//     print('Transaction Pending');
//     print("Transaction Ref ${transaction.refrenceNumber}");
//   }

//   void _onPaymentFailed(Transaction transaction) {
//     print('Transaction Failed');
//     print("Transaction message ==> ${transaction.message}");
//   }

//   void _onCancel(Transaction transaction) {
//     print('Transaction Cancelled');
//   }
}
