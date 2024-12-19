import 'package:flutter/material.dart';

class FeaturedNews extends StatelessWidget {
  const FeaturedNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.network(
                    'https://storage.googleapis.com/a1aa/image/nRja1p239qYIJF6xbTsFpYDsreFG8aQgaGhSu0FHbvF6qNeTA.jpg',
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Featured News Title',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'A brief description of the featured news article.',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildSecondaryNewsItem(
                'https://storage.googleapis.com/a1aa/image/JkIo3N42HEaGNB9j5fw8MedbvVdicgyob9tDxCrVEJQ2Vb8TA.jpg',
                'Secondary News Title',
                'A brief description.',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: _buildSecondaryNewsItem(
                'https://storage.googleapis.com/a1aa/image/pMxGIuZEoaZOA1DQHuN3OQ9aHSLjtlpElLI0mWzfZbZzqNeTA.jpg',
                'Another Secondary News Title',
                'Another brief description.',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSecondaryNewsItem(String imageUrl, String title, String description) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          height: 125,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.black.withOpacity(0.5),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

