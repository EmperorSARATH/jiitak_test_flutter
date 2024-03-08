import 'package:flutter/material.dart';

class Images_row extends StatelessWidget {
  const Images_row({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/icecream.png"),
              Image.asset("images/soda.png"),
              Image.asset("images/coco.png"),
            ],
          ),
        ),
      ),
    );
  }
}
