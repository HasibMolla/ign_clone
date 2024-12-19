import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                'https://storage.googleapis.com/a1aa/image/ZBeFXd9hIemFfpdnCV5gWOK8WrGB5wShrwTyEbqJ0JRFr24nA.jpg',
                height: 40,
                width: 40,
              ),
              SizedBox(width: 16),
              Row(
                children: [
                  _buildNavItem('Home'),
                  _buildNavItem('News'),
                  _buildNavItem('Reviews'),
                  _buildNavItem('Videos'),
                  _buildNavItem('Guides'),
                  _buildNavItem('Deals'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _buildNavItem('Sign In'),
              _buildNavItem('Register'),
              Icon(Icons.search, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
