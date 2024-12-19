import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Text(
            'IGN Clone',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            children: [
              _buildFooterLink('About Us'),
              _buildFooterLink('Contact'),
              _buildFooterLink('Privacy Policy'),
              _buildFooterLink('Terms of Service'),
            ],
          ),
          SizedBox(height: 16),
          Text(
            '© 2024 IGN Clone. All rights reserved.',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.blueAccent, fontSize: 16),
    );
  }
}
