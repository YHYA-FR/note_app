
import 'package:flutter/material.dart';

class titleHomePage extends StatelessWidget {
  const titleHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          child: Text(
            'NOTES',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(
          width: 180,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 32,),
        ),
      ],
    );
  }
}
