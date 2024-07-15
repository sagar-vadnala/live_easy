// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:liveasy/HomeScreen/views/home-screen.dart';
// import 'package:liveasy/Profile/views/profile_selection.dart';
// import 'package:liveasy/Signup/views/mobile_number.dart';
// import 'package:pinput/pinput.dart';

// class MyOtp extends StatefulWidget {
//   const MyOtp({super.key});

//   @override
//   State<MyOtp> createState() => _MyOtpState();
// }

// class _MyOtpState extends State<MyOtp> {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: const TextStyle(
//           fontSize: 20,
//           color: Color.fromRGBO(30, 60, 87, 1),
//           fontWeight: FontWeight.w600),
//       decoration: BoxDecoration(
//         border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
//         borderRadius: BorderRadius.circular(20),
//       ),
//     );

//     final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//       border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
//       borderRadius: BorderRadius.circular(8),
//     );

//     final submittedPinTheme = defaultPinTheme.copyWith(
//       decoration: defaultPinTheme.decoration?.copyWith(
//         color: const Color.fromRGBO(234, 239, 243, 1),
//       ),
//     );
//     var code = "";
//     return Scaffold(
//       backgroundColor: Colors.white,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(top: 125.0, left: 122, right: 122),
//             child: Text(
//               "Verify Phone",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Text(
//             "Code is sent to ****",
//             style: TextStyle(
//               fontSize: 16,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//             child: Pinput(
//               length: 6,
//               showCursor: true,
//               onChanged: (value) {
//                 code = value;
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//            Padding(
//             padding: EdgeInsets.symmetric(horizontal: 60),
//             child: Row(
//               children: [
//                 Text(
//                   "Didnt recieve code? ",
//                   style: TextStyle(color: Colors.black87),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     MaterialPageRoute(builder: (context) => const PhonePage());
//                   },
//                   child: Text(
//                     "Request Again",
//                     style: TextStyle(
//                         color: Colors.black, fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 25,
//           ),
//           SizedBox(
//             width: 328,
//             height: 58,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF2E3B62),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//               ),
//               onPressed: () async {
//                 try {
//                   PhoneAuthCredential credential = PhoneAuthProvider.credential(
//                       verificationId: PhonePage.verify, smsCode: code);

//                   // Sign the user in (or link) with the credential
//                   await auth.signInWithCredential(credential);
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => const ProfileSelection()));
//                 } catch (e) {
//                   print("wrong otp");
//                 }
//               },
//               child: const Text(
//                 "verify phone number",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/HomeScreen/views/home-screen.dart';
import 'package:liveasy/Profile/views/profile_selection.dart';
import 'package:liveasy/Signup/views/mobile_number.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({Key? key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code = "";

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.15,
              left: screenSize.width * 0.15,
              right: screenSize.width * 0.15,
            ),
            child: Text(
              "Verify Phone",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Code is sent to ****",
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
            child: Pinput(
              length: 6,
              showCursor: true,
              onChanged: (value) {
                code = value;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.15),
            child: Row(
              children: [
                Text(
                  "Didn't receive code? ",
                  style: TextStyle(color: Colors.black87),
                ),
                GestureDetector(
                  onTap: () {
                    // Add functionality to request code again
                    // MaterialPageRoute(builder: (context) => const PhonePage());
                  },
                  child: Text(
                    "Request Again",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: screenSize.width * 0.85,
            height: 58,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2E3B62),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: PhonePage.verify, smsCode: code);

                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ProfileSelection()));
                } catch (e) {
                  print("wrong otp");
                }
              },
              child: const Text(
                "Verify Phone Number",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

