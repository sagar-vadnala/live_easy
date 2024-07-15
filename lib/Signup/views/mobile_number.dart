// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:liveasy/Signup/views/verify_phone.dart';

// class PhonePage extends StatefulWidget {
//   const PhonePage({super.key});
//   static String verify = "";

//   @override
//   State<PhonePage> createState() => _PhonePageState();
// }

// class _PhonePageState extends State<PhonePage> {
//   TextEditingController countryController = TextEditingController();
//   var phone = "";

//   @override
//   void initState() {
//     // TODO: implement initState
//     countryController.text = "+91";
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.close,
//             color: Colors.black,
//           ),
//         ),
//       ),
//         body: Column(children: [
//       Padding(
//         padding: EdgeInsets.only(top: 112, right: 30, left: 30),
//         child: Text(
//           "Please enter your mobile number",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       Column(
//         children: [
//           const Text(
//             "You’ll receive a 6 digit code",
//             style: TextStyle(fontSize: 18, color: Colors.grey),
//           ),
//           Text(
//             "to verify next.",
//             style: TextStyle(fontSize: 18, color: Colors.grey),
//           )
//         ],
//       ),
//       const SizedBox(
//         height: 32,
//       ),
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 18.0),
//         child: Container(
//           height: 48,
//           decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Colors.grey),
//               borderRadius: BorderRadius.circular(10)),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Image.asset("assets/images/flag.png"),
//               ),
//               SizedBox(
//                 width: 40,
//                 child: TextField(
//                   controller: countryController,
//                   keyboardType: TextInputType.number,
//                   decoration: const InputDecoration(
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               Text(
//                 "-",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                 child: TextField(
//                   onChanged: (value) {
//                     phone = value;
//                   },
//                   // keyboardType: TextInputType.phone,
//                   keyboardType: TextInputType.phone,
//                   decoration: const InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Mobile Number",
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       const SizedBox(
//         height: 30,
//       ),
//       SizedBox(
//         width: 328,
//         height: 58,
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Color(0xFF2E3B62),
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
//           ),
//           onPressed: () async {
//             // delay avoidind circle
//             // showDialog(
//             //   context: context,
//             //   builder: (context) {
//             //     return Center(child: CircularProgressIndicator());
//             //   },
//             // );
//             await FirebaseAuth.instance.verifyPhoneNumber(
//               phoneNumber: '${countryController.text + phone}',
//               verificationCompleted: (PhoneAuthCredential credential) {},
//               verificationFailed: (FirebaseAuthException e) {},
//               codeSent: (String verificationId, int? resendToken) {
//                 PhonePage.verify = verificationId;
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => const MyOtp()));
//               },
//               codeAutoRetrievalTimeout: (String verificationId) {},
//             );
//             // pop the loading circle
//             // Navigator.of(context).pop();
//           },
//           child: const Text(
//             "Send the code",
//             style: TextStyle(
//                 color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ),
//       )
//     ]));
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/Signup/views/verify_phone.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({Key? key}) : super(key: key);
  static String verify = "";

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  TextEditingController countryController = TextEditingController();
  var phone = "";

  @override
  void initState() {
    super.initState();
    countryController.text = "+91";
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight / 8,),
              child: Text(
                "Please enter your mobile number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              const Text(
                "You’ll receive a 6 digit code",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              Text(
                "to verify next.",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 15),
            child: Container(
              height: screenHeight / 14,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                // borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("assets/images/flag.png"),
                  ),
                  SizedBox(
                    width: screenWidth / 7,
                    child: TextField(
                      controller: countryController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: screenWidth / 30,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        phone = value;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile Number",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: screenWidth / 1.160,
            height: screenHeight / 14,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2E3B62),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '${countryController.text + phone}',
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (String verificationId, int? resendToken) {
                    PhonePage.verify = verificationId;
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const MyOtp()),
                    );
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );
              },
              child: const Text(
                "Send the code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

