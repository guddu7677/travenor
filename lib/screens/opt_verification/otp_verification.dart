import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                child: IconButton(
                  icon: Center(child:  Icon(Icons.arrow_back_ios, color: Colors.black,size: 16,)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           SizedBox(height: 20),
           Text(
              "Forget Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 12),
           Text(
              "Please enter your email to receive a link to create a new password via email.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
           SizedBox(height: 40),
           Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                width: 50,
                height: 60,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
           SizedBox(height: 40),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/MainPage');
              },
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0D6EFD),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Verify OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(
                      color: Color(0xFF0D6EFD),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
               Text("01:59",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),  
              ],
            )
          ],
        ),
      ),
    );
  }
}
