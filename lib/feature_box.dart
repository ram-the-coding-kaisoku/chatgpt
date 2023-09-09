import 'package:chatgpt/pallete.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String featureText;
  final String descriptionText;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.featureText,
      required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 20)
          .copyWith(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              featureText,
              style: const TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            descriptionText,
            style: const TextStyle(color: Pallete.blackColor, fontSize: 15),
          ),
        ],
      ),

    );
  }
}
