import 'package:flutter/material.dart';

class PopularPlace extends StatefulWidget {
  const PopularPlace({super.key});

  @override
  State<PopularPlace> createState() => _PopularPlaceState();
}

class _PopularPlaceState extends State<PopularPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title:Text(
          "Popular Places",
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
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "All Popular Places",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPlaceCard(
                image: "assets/images/pics8.jpg",
                title: "Niladri Reservoir",
                location: "Tekergat, Sunamganj",
                rating: "4.7",
                price: "\$499",
              ),
               SizedBox(width: 12),
              _buildPlaceCard(
                image: "assets/images/pics9.jpg",
                title: "Casa Las Tirtugas",
                location: "Av Damero, Mexico",
                rating: "4.8",
                price: "\$894",
              ),
            ],
          ),
         SizedBox(height: 12),
                     Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPlaceCard(
                image: "assets/images/pics10.jpg",
                title: "Aonang Villa Resort",
                location: "Bastola, Islampur",
                rating: "4.3",
                price: "\$761",
              ),
              const SizedBox(width: 12),
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
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3E3E3E), 
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),

         SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
               Icon(Icons.location_on, color: Colors.grey, size: 14),
                 SizedBox(width: 4),
                Text(
                  location,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow, size: 12),
                const Icon(Icons.star, color: Colors.yellow, size: 12),
                const Icon(Icons.star, color: Colors.yellow, size: 12),
                const SizedBox(width: 4),
                Text(
                  rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
         SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
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
                      fontWeight: FontWeight.normal,
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
