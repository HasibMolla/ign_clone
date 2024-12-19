import 'package:flutter/material.dart';
import '../widgets/featured_news.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/latest_news.dart';
import '../widgets/latest_reviews.dart';
import '../widgets/latest_videos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  FeaturedNews(),
                  SizedBox(height: 16),
                  LatestNews(),
                  SizedBox(height: 16),
                  LatestReviews(),
                  SizedBox(height: 16),
                  LatestVideos(),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
