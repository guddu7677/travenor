import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                child: IconButton(
                  icon: Center(child:  Icon(Icons.arrow_back_ios, color: Colors.black,size: 16,)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "Done",
                style: TextStyle(color: Color(0xFF0D6EFD), fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFFE0E0E0),
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Leonardo",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Change Profile Picture",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(height: 30),

            // Label
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "First Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
           SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Leonardo',
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
           SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Last Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Ahmed',
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
           SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Sylhet Bangladesh',
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
             SizedBox(height: 20),
            Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text(
      "Mobile Number",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  ],
),
 SizedBox(height: 8),
TextField(
  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
    hintText: '01758-000666',
    filled: true,
    fillColor: Colors.grey[200],
    prefixIcon: Container(
      width: 80,
      padding: EdgeInsets.only(left: 12, right: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '+91',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 4),
          Text(
            '🇮🇳',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    ),
    suffixIcon: Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}
