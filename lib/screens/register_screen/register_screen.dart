import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool _obscurePassword = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                child: IconButton(
                  icon: Center(child:  Icon(Icons.arrow_back_ios, color: Colors.black,size: 16,)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Sign up now",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Please fill the details and create account",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
             SizedBox(height: 40,),
             TextField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
                hintText: 'Name',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
               
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
             fillColor: Colors.grey.shade200,
             filled: true,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,

                ),
              
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 40),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0D6EFD),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/LoginScreen');
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account ",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: TextStyle(
                          color: Color(0xFF0D6EFD),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: Text(
                "or connect with",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF0D6EFD),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.facebook, color: Colors.white, size: 30),
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFFFD521), width: 1),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFD521), 
                        Color(0xFFF50000), 
                        Color(0xFFB900B4), 
                      ],
                    ),
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/insta.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF03A9F4),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFF03A9F4), width: 1),
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/twwit.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}