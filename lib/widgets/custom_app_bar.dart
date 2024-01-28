import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAbbBar extends StatelessWidget {
  const CustomAbbBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
