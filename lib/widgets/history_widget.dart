import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({
    Key? key,
    required this.feature,
    required this.imgUrl,
  }) : super(key: key);

  final String feature;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black26)),
            child: Image.network(imgUrl),
          ),
          const SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              feature,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
