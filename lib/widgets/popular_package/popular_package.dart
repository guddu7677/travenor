import 'package:flutter/material.dart';

class PopularPackage extends StatelessWidget {
  const PopularPackage({super.key});

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
          "Popular Places",
          style: TextStyle(
            fontSize: 18,
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "All Popular Trip Packages",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            ...List.generate(
              _packages.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  bottom: index < _packages.length - 1 ? 16 : 0,
                ),
                child: PackageCard(package: _packages[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static final List<PackageModel> _packages = [
    PackageModel(
      image: "assets/images/pics13.jpg",
      title: "Santorini Island",
      date: "16 July - 28 July",
      rating: 4.7,
      price: 820,
      personsJoined: 22,
    ),
    PackageModel(
      image: "assets/images/pics14.jpg",
      title: "Bali Beach Resort",
      date: "21 Aug - 2 Sep",
      rating: 4.9,
      price: 950,
      personsJoined: 33,
    ),
    PackageModel(
      image: "assets/images/pics15.jpg",
      title: "Swiss Alps",
      date: "10 Dec - 22 Dec",
      rating: 4.8,
      price: 1200,
      personsJoined: 28,
    ),
  ];
}

// Data Model
class PackageModel {
  final String image;
  final String title;
  final String date;
  final double rating;
  final int price;
  final int personsJoined;

  PackageModel({
    required this.image,
    required this.title,
    required this.date,
    required this.rating,
    required this.price,
    required this.personsJoined,
  });
}

// Reusable Package Card Widget
class PackageCard extends StatelessWidget {
  final PackageModel package;

  const PackageCard({
    super.key,
    required this.package,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  package.image,
                  height: 110,
                  width: 110,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 110,
                      width: 110,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),

              // Trip Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      package.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),

                    // Date
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 14,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            package.date,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),

                    // Rating Stars
                    _buildRatingStars(package.rating),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              // Price Tag
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF0D6EFD),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "\$${package.price}",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                "assets/images/Group1.png",
                height: 30,
                width: 30,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.group,
                    size: 30,
                    color: Colors.grey,
                  );
                },
              ),
              const SizedBox(width: 6),
              Text(
                "${package.personsJoined} Person${package.personsJoined != 1 ? 's' : ''} Joined",
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
    final fullStars = rating.floor();
    final hasHalfStar = (rating - fullStars) >= 0.5;

    return Row(
      children: [
        ...List.generate(
          fullStars,
          (index) => const Icon(
            Icons.star,
            size: 14,
            color: Colors.amber,
          ),
        ),
        if (hasHalfStar)
           Icon(
            Icons.star_half,
            size: 14,
            color: Colors.amber,
          ),
        ...List.generate(
          5 - fullStars - (hasHalfStar ? 1 : 0),
          (index) => const Icon(
            Icons.star_border,
            size: 14,
            color: Colors.amber,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}