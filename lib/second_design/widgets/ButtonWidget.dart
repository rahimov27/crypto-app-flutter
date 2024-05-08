import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            Color(0xff4671ED),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Add Crypto",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}