import 'package:flutter/material.dart';

class MessangingScreen extends StatefulWidget {
  const MessangingScreen({super.key});

  @override
  State<MessangingScreen> createState() => _MessangingScreenState();
}

class _MessangingScreenState extends State<MessangingScreen> {
  final TextEditingController searchcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Messages",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.more_vert, color: Colors.black87, size: 20),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Messages",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.edit, color: Colors.blue.shade700, size: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          blurRadius: 10,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: searchcontroller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search for chats & messages',
                        hintStyle: TextStyle(color: Colors.grey[500], fontSize: 15),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[600], size: 22),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 8),
                children: [
                  _buildChatTile(
                    name: "Sajib Rahman",
                    message: "Hi, John! 👋 How are you doing?",
                    time: "09:46",
                    dotColor: Colors.grey,
                    checkIcon: Icons.check,
                    checkColor: Colors.grey,
                    messageColor: Colors.grey[600]!,
                    imagePath: "assets/images/pp.png",
                  ),
                  
                  _buildChatTile(
                    name: "Jane Smith",
                    message: "typing...",
                    time: "08:45",
                    dotColor: Colors.amber.shade600,
                    checkIcon: Icons.done_all,
                    checkColor: Colors.green.shade600,
                    messageColor: Colors.blue.shade600,
                    imagePath: "assets/images/pp.png",
                  ),
                  
                  _buildChatTile(
                    name: "Mike Johnson",
                    message: "See you tomorrow!",
                    time: "Yesterday",
                    dotColor: Colors.green.shade600,
                    checkIcon: Icons.done_all,
                    checkColor: Colors.grey,
                    messageColor: Colors.grey[600]!,
                    imagePath: "assets/images/pp.png",
                  ),
                  
                  _buildChatTile(
                    name: "Sarah Williams",
                    message: "Thanks for your help",
                    time: "07:45",
                    dotColor: Colors.red.shade600,
                    checkIcon: Icons.check,
                    checkColor: Colors.grey,
                    messageColor: Colors.grey[600]!,
                    imagePath: "assets/images/pp.png",
                  ),
                  
                  _buildChatTile(
                    name: "David Brown",
                    message: "Perfect! Let's do it",
                    time: "05:55",
                    dotColor: Colors.green.shade600,
                    checkIcon: Icons.done_all,
                    checkColor: Colors.green.shade600,
                    messageColor: Colors.grey[600]!,
                    showOnline: true,
                    imagePath: "assets/images/pp.png",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildChatTile({
    required String name,
    required String message,
    required String time,
    required Color dotColor,
    required IconData checkIcon,
    required Color checkColor,
    required Color messageColor,
    required String imagePath,
    bool showOnline = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: Stack(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.purple.shade200],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: Icon(Icons.person, size: 32, color: Colors.grey[600]),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 2,
              right: 2,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: dotColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
        ),
        subtitle: showOnline
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: TextStyle(
                      color: messageColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.green.shade500,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.green.shade600,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Text(
                message,
                style: TextStyle(
                  color: messageColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              time,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 6),
            Icon(checkIcon, color: checkColor, size: 18),
          ],
        ),
      ),
    );
  }
}