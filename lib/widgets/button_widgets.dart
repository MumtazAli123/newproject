import 'package:flutter/material.dart';
import 'package:newproject/screens/login_page/login.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  const CustomButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        buttonText,
        style: const TextStyle(
            fontSize: 23, color: Colors.white, fontWeight: FontWeight.w500),
      )),
    );
  }
}

class CustomButton002 extends StatelessWidget {
  final String buttonText2;
  const CustomButton002({
    Key? key,
    required this.buttonText2,
    void Function()? onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
      child: Text(
        buttonText2,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
      ),
    );
  }
}
