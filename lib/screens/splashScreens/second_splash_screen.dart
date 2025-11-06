// import 'package:flutter/material.dart';
// import 'package:travenar/screens/splashScreens/third_splash_screen.dart';

// class SecondSplashScreen extends StatefulWidget {
//   const SecondSplashScreen({super.key});

//   @override
//   State<SecondSplashScreen> createState() => _SecondSplashScreenState();
// }

// class _SecondSplashScreenState extends State<SecondSplashScreen> {
//   void _navigateToNext() {
//     Navigator.push(
//       context,
//       PageRouteBuilder(
//         pageBuilder: (context, animation, secondaryAnimation) =>
//             const ThirdSplashScreen(),
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           const begin = Offset(1.0, 0.0);
//           const end = Offset.zero;
//           const curve = Curves.easeInOut;
//           var tween = Tween(begin: begin, end: end).chain(
//             CurveTween(curve: curve),
//           );
//           var offsetAnimation = animation.drive(tween);
//           return SlideTransition(
//             position: offsetAnimation,
//             child: child,
//           );
//         },
//         transitionDuration: const Duration(milliseconds: 400),
//       ),
//     );
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
//               _navigateToNext();
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
//                       decoration: const BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/nav.png'),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(30),
//                           bottomRight: Radius.circular(30),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 40),
//                     Column(
//                       children: [
//                         RichText(
//                           textAlign: TextAlign.center,
//                           text: const TextSpan(
//                             text: "It's a big world out \nthere go ",
//                             style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: "explore",
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
//                           padding: const EdgeInsets.only(left: 100),
//                           child: Image.asset(
//                             'assets/images/Vector2.png',
//                             color: const Color(0xFFFF7029),
//                             colorBlendMode: BlendMode.srcIn,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       child: Text(
//                         "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 16, color: Colors.grey),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 8,
//                           height: 8,
//                           decoration: const BoxDecoration(
//                             color: Colors.grey,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Container(
//                           width: 25,
//                           height: 8,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF0D6EFD),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Container(
//                           width: 8,
//                           height: 8,
//                           decoration: const BoxDecoration(
//                             color: Colors.grey,
//                             shape: BoxShape.circle,
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
//                       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                       child: InkWell(
//                         onTap: _navigateToNext,
//                         child: const Center(
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