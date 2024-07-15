import 'package:flutter/material.dart';
import 'package:liveasy/HomeScreen/views/home-screen.dart';
import 'package:liveasy/widgets/large-button.dart';

class ProfileSelection01 extends StatefulWidget {
  const ProfileSelection01({super.key});

  @override
  State<ProfileSelection01> createState() => _ProfileSelection01State();
}

class _ProfileSelection01State extends State<ProfileSelection01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(
            top: 112,
            right: 65,
            left: 65,
          ),
          child: Text("Please select your profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
          ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
            ),
          ),
          SizedBox(height: 25,),
          LargeButton(text: "CONTINUE",
          onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
          },
          )
        ],
      ),
    );
  }
}