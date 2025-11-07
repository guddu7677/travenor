import 'package:flutter/material.dart';

class FavoritePerson extends StatefulWidget {
  const FavoritePerson({super.key});

  @override
  State<FavoritePerson> createState() => _FavoritePersonState();
}

class _FavoritePersonState extends State<FavoritePerson> {
  final List<Map<String, String>> places = [
    {
      'image': 'assets/images/pics8.jpg',
      'title': 'Niladri Reservoir',
      'location': 'Tekergat, Sunamganj',
    },
    {
      'image': 'assets/images/pics9.jpg',
      'title': 'Casa Las Tirtugas',
      'location': 'Av Damero, Mexico',
    },
    {
      'image': 'assets/images/pics10.jpg',
      'title': 'Aonang Villa Resort',
      'location': 'Bastola, Islampur',
    },
    {
      'image': 'assets/images/pics11.jpg',
      'title': 'Rangauti Resort',
      'location': 'Sylhet, Bangladesh',
    },
    {
      'image': 'assets/images/pics12.jpg',
      'title': 'Kachura Resort',
      'location': 'Sylhet, Bangladesh',
    },
     {
      'image': 'assets/images/pics13.jpg',
      'title': 'Shakardu Resort',
      'location': 'Sylhet, Bangladesh',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Popular Places',
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
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'All Popular Places',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    return _buildPlaceCard(
                      image: places[index]['image']!,
                      title: places[index]['title']!,
                      location: places[index]['location']!,
                    );
                  },
                ),
              ),
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
  }) {
    return Container(
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
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF3E3E3E),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                if (location.isNotEmpty)
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          location,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}