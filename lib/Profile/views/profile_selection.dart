// import 'package:flutter/material.dart';
// import 'package:liveasy/HomeScreen/views/home-screen.dart';
// import 'package:liveasy/widgets/large-button.dart';

// class ProfileSelection extends StatefulWidget {
//   const ProfileSelection({super.key});

//   @override
//   State<ProfileSelection> createState() => _ProfileSelectionState();
// }

// class _ProfileSelectionState extends State<ProfileSelection> {
//   String _selectedOption = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(
//                 top: 112,
//                 right: 65,
//                 left: 65,
//               ),
//               child: Text(
//                 "Please select your profile",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Column(
//                 children: [
//                   _buildCustomRadioTile(
//                     value: 'shipper',
//                     groupValue: _selectedOption,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedOption = value!;
//                       });
//                     },
//                     icon: Icons.home,
//                     title: 'Shipper',
//                     subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
//                   ),
//                   const SizedBox(height: 25),
//                   _buildCustomRadioTile(
//                     value: 'transporter',
//                     groupValue: _selectedOption,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedOption = value!;
//                       });
//                     },
//                     icon: Icons.local_shipping,
//                     title: 'Transporter',
//                     subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 25),
//             LargeButton(
//               text: "CONTINUE",
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const HomeScreen(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCustomRadioTile({
//     required String value,
//     required String groupValue,
//     required Function(String?) onChanged,
//     required IconData icon,
//     required String title,
//     required String subtitle,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: RadioListTile<String>(
//         value: value,
//         groupValue: groupValue,
//         onChanged: onChanged,
//         title: Row(
//           children: [
//             Icon(icon, size: 40),
//             const SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(fontSize: 12),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         controlAffinity: ListTileControlAffinity.leading,
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:liveasy/HomeScreen/views/home-screen.dart';
import 'package:liveasy/widgets/large-button.dart';

class ProfileSelection extends StatefulWidget {
  const ProfileSelection({Key? key});

  @override
  State<ProfileSelection> createState() => _ProfileSelectionState();
}

class _ProfileSelectionState extends State<ProfileSelection> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height /8),
              child: Text(
                "Please select your profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 20),
              child: Column(
                children: [
                  _buildCustomRadioTile(
                    value: 'shipper',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                    icon: Icons.home,
                    title: 'Shipper',
                    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  _buildCustomRadioTile(
                    value: 'transporter',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                    icon: Icons.local_shipping,
                    title: 'Transporter',
                    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            LargeButton(
              text: "CONTINUE",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomRadioTile({
    required String value,
    required String groupValue,
    required Function(String?) onChanged,
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 40),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        // borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width / 30),
      ),
      child: RadioListTile<String>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Row(
          children: [
            Icon(icon, size: MediaQuery.of(context).size.width / 8),
            SizedBox(width: MediaQuery.of(context).size.width / 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width / 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 200),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width / 35),
                  ),
                ],
              ),
            ),
          ],
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
