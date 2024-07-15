import 'package:flutter/material.dart';
import 'package:liveasy/Signup/views/mobile_number.dart';
import 'package:liveasy/widgets/small_button.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight / 5,
                  left: screenWidth / 2.4,
                  right: screenWidth / 2.4,
                ),
                child: Image.asset("assets/images/vector.jpeg"),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight / 25,),
                child: Text(
                  "Please select your Language",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight / 100, left: screenWidth / 7.5, right: screenWidth / 7.5),
                child: Column(
                  children: [
                    Text("You can change the language"),
                    Text("at any time")
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 33.3,
              ),
              Container(
                height: screenHeight / 16.67,
                width: screenWidth / 1.8,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: LanguageDropdown(),
                ),
              ),
              SizedBox(
                height: screenHeight / 40,
              ),
              SmallButton(
                text: "NEXT",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhonePage(),
                    ),
                  );
                },
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/images/below.png",
                height: screenHeight / 8,
                width: screenWidth,
                fit: BoxFit.cover,
              ),
              Image.asset("assets/images/above.png",
                height: screenHeight / 8.5,
                width: screenWidth,
                fit: BoxFit.cover,
              )
            ],
          )
        ],
      ),
    );
  }
}

class LanguageDropdown extends StatefulWidget {
  @override
  _LanguageDropdownState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedLanguage,
      hint: Text('Select Language'),
      isExpanded: true,
      underline: SizedBox(), // Remove underline
      items: [
        DropdownMenuItem(
          value: 'English',
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: 'Hindi',
          child: Text('Hindi'),
        ),
      ],
      onChanged: (value) {
        setState(() {
          selectedLanguage = value;
        });
      },
    );
  }
}
