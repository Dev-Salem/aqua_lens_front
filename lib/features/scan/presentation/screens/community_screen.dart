import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              "Most Viewed Products",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return WaterBrandCard(
                      brandName: "Aqua Water", rating: index.toDouble());
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SocialMediaPostCard(
                  userName: 'userName$index',
                  postName: 'What a surprise',
                  isLiked: false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WaterBrandCard extends StatelessWidget {
  final String brandName;
  final double rating;

  const WaterBrandCard({
    super.key,
    required this.brandName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              "assets/water.png",
              height: 100,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brandName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaPostCard extends StatefulWidget {
  final String userName;
  final String postName;
  final bool isLiked;

  const SocialMediaPostCard({
    super.key,
    required this.userName,
    required this.postName,
    required this.isLiked,
  });

  @override
  _SocialMediaPostCardState createState() => _SocialMediaPostCardState();
}

class _SocialMediaPostCardState extends State<SocialMediaPostCard> {
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 20.0,
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                Text(
                  widget.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                _isLiked = !_isLiked;
              });
            },
            child: Container(
              color: Colors.grey.shade300,
              width: double.infinity,
              height: 200.0,
              child: Icon(
                Icons.image,
                color: Colors.grey.shade600,
                size: 100.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.postName,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isLiked ? Icons.favorite : Icons.favorite_border,
                    color: _isLiked ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isLiked = !_isLiked;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
