import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              Icons.search,
              size: 150,
              color: Color(0xFFC7C7C7),
            ),
          ),
          const Text(
            'Item not found',
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'SFProtextSemibold',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Try searching the item with\na different keyword.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14,
              fontFamily: 'SFProtext',
            ),
          ),
        ],
      ),
    );
  }
}
