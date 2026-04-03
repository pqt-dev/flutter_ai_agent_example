import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CircularFlagAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;

  const CircularFlagAvatar({
    super.key,
    required this.imageUrl,
    this.size = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.withAlpha(50), width: 1),
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.contain,
            placeholder: (context, url) => const CircularProgressIndicator(strokeWidth: 2),
            errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
