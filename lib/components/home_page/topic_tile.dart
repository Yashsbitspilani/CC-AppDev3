import 'package:cc/utils/methods.dart';
import 'package:flutter/material.dart';

class TopicTile extends StatelessWidget {
  const TopicTile({
    Key? key,
  required this.topic,
  }) : super(key: key);

  final String topic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        loadSession(context: context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Expanded(child: Text(topic)),
          ]
        ),
      ),
    );
  }
}
