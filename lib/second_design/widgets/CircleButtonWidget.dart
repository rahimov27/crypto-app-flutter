import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.func,
  }) : super(key: key);

  final String image;
  final String text;
  final VoidCallback func; // Specify the type as VoidCallback

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: func,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Color(0xff4671ED),
            child: Image.asset(image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
