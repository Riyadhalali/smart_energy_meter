import 'package:flutter/material.dart';

//-> this button is for social buttons
class SocialButton extends StatelessWidget {
  final Function? functionToDo;
  final String buttonText;
  final String image;
  const SocialButton({required this.functionToDo, required this.buttonText, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      color: Colors.white,
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              buttonText,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        // style: ElevatedButton.styleFrom(primary: Colors.white),
      ),
    );
  }
}
