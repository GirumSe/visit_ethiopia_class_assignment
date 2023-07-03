import 'package:flutter/material.dart';
import 'package:visit_ethiopia/models/hotspot_model.dart';

class MiniaturePlaceCard extends StatelessWidget {
  final TouristHotspot hotspot;

  const MiniaturePlaceCard({super.key, required this.hotspot});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.black.withOpacity(0.1),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(hotspot.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotspot.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${hotspot.description.substring(0, 50)}...',
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
