import 'package:flutter/material.dart';

class SearchPlace extends StatefulWidget {
  const SearchPlace({super.key});

  @override
  State<SearchPlace> createState() => _SearchPlaceState();
}

class _SearchPlaceState extends State<SearchPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Search",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
                radius: 20,
                  backgroundColor: Color(0XFFF7F7F9),
                  child: IconButton(
                    icon: Center(child:  Icon(Icons.arrow_back_ios, color: Colors.black,size: 16,)),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "Cancel",
                style: TextStyle(color: Color(0xFF0D6EFD), fontSize: 14),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Color(0xFF7D848D)),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search places...",
                        hintStyle: TextStyle(color: Color(0xFF7D848D)),
                      ),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.mic, color: Colors.grey, size: 24),
                  ),
                ],
              ),
            ),
      
            const SizedBox(height: 20),
      
            const Text(
              "Search Places",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
      
            const SizedBox(height: 16),
      
            // 🧳 First Row of Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPlaceCard(
                  image: "assets/images/pics8.jpg",
                  title: "Niladri Reservoir",
                  location: "Tekergat, Sunamganj",
                  rating: "4.7",
                  price: "\$499",
                ),
                _buildPlaceCard(
                  image: "assets/images/pics9.jpg",
                  title: "Casa Las Tirtugas",
                  location: "Av Damero, Mexico",
                  rating: "4.8",
                  price: "\$894",
                ),
              ],
            ),
      
            const SizedBox(height: 16),
      
            // 🌴 Second Row of Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPlaceCard(
                  image: "assets/images/pics10.jpg",
                  title: "Aonang Villa Resort",
                  location: "Bastola, Islampur",
                  rating: "4.3",
                  price: "\$761",
                ),
                _buildPlaceCard(
                  image: "assets/images/pics11.jpg",
                  title: "Rangauti Resort",
                  location: "Sylhet, Airport Road",
                  rating: "4.7",
                  price: "\$499",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceCard({
    required String image,
    required String title,
    required String location,
    required String rating,
    required String price,
  }) {
    return Container(
      height: 210,
      width: MediaQuery.of(context).size.width * 0.42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🖼 Image only (Removed Favorite Icon)
          Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                const Icon(Icons.location_on, color: Colors.grey, size: 13),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    location,
                    style: const TextStyle(fontSize: 11, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow, size: 12),
                const Icon(Icons.star, color: Colors.yellow, size: 12),
                const Icon(Icons.star, color: Colors.yellow, size: 12),
                const SizedBox(width: 4),
                Text(
                  rating,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: price,
                    style: const TextStyle(
                      color: Color(0xFF0D6EFD),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: "/Person",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
