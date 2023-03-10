import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  Color tagColor;
  String categoryName;
  int messagesCount;

  StatusCard({
    super.key,
    required this.tagColor,
    required this.categoryName,
    required this.messagesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: tagColor,
                ),
                Text(
                  '$messagesCount',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                )
              ],
            ),
            Text(
              categoryName,
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ));
  }
}
