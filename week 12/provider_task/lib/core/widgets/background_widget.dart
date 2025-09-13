import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          Positioned(
            top: -100,
            left: -50,
            child: _buildGlow(Colors.blue.withValues(alpha: .4)),
          ),
          Positioned(
            bottom: -120,
            right: -50,
            child: _buildGlow(Colors.blue.withValues(alpha: .4)),
          ),
          child,
        ],
      ),
    );
  }

  Widget _buildGlow(Color color) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
        child: Container(color: Colors.transparent),
      ),
    );
  }
}
