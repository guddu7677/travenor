// import 'package:flutter/material.dart';

// class ThirdSplashScreen extends StatefulWidget {
//   const ThirdSplashScreen({super.key});

//   @override
//   State<ThirdSplashScreen> createState() => _ThirdSplashScreenState();
// }

// class _ThirdSplashScreenState extends State<ThirdSplashScreen> {
//   void _navigateToLogin() {
//     Navigator.pushNamed(context, '/LoginScreen');
//   }

//   void _navigateToPrevious() {
//     Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: GestureDetector(
//           onHorizontalDragEnd: (details) {
//             if (details.primaryVelocity! < 0) {
//               _navigateToLogin();
//             } else if (details.primaryVelocity! > 0) {
//               _navigateToPrevious();
//             }
//           },
//           child: SingleChildScrollView(
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                 minHeight: MediaQuery.of(context).size.height - 
//                            MediaQuery.of(context).padding.top - 
//                            MediaQuery.of(context).padding.bottom,
//               ),
//               child: IntrinsicHeight(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 300,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/fla.jpg'),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(30),
//                           bottomRight: Radius.circular(30),
//                         ),
//                       ),
//                     ),
//                    SizedBox(height: 40),
//                     Column(
//                       children: [
//                         RichText(
//                           textAlign: TextAlign.center,
//                           text: TextSpan(
//                             text: "People don't take trips, \ntrips take ",
//                             style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: "people",
//                                 style: TextStyle(
//                                   color: Color(0xFFFF7029),
//                                   fontSize: 26,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 110),
//                           child: Image.asset(
//                             'assets/images/Vector2.png',
//                             color: Color(0xFFFF7029),
//                             colorBlendMode: BlendMode.srcIn,
//                           ),
//                         ),
//                       ],
//                     ),
//                    SizedBox(height: 20),
//                    Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       child: Text(
//                         "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 16, color: Colors.grey),
//                       ),
//                     ),
//                    SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 8,
//                           height: 8,
//                           decoration: BoxDecoration(
//                             color: Colors.grey,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                        SizedBox(width: 8),
//                         Container(
//                           width: 8,
//                           height: 8,
//                           decoration: BoxDecoration(
//                             color: Colors.grey,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                        SizedBox(width: 8),
//                         Container(
//                           width: 25,
//                           height: 8,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF0D6EFD),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Spacer(),
//                     Container(
//                       height: 50,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF0D6EFD),
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                       child: InkWell(
//                         onTap: _navigateToLogin,
//                         child: Center(
//                           child: Text(
//                             "Next",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }