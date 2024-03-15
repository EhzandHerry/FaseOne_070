import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("RM Jaya"),
        SizedBox(
          height: 25,
        ),
        
        CircleAvatar(
          child: Image.network(
              "https://img.harianjogja.com/posts/2021/11/25/1089145/img_0298-1.jpg"),
          radius: 70,
        )
      ],
    );
  }
}
