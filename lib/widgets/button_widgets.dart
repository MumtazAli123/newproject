import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newproject/home_page_screeens/home_page_screen.dart';
import 'package:newproject/screens/login_page/login.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}

class CustomButton002 extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  const CustomButton002({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}

class CustomButton003 extends StatefulWidget {
  final String name;
  final IconData icon;
  const CustomButton003({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomButton003> createState() => _CustomButton003State();
}

class _CustomButton003State extends State<CustomButton003> {
  void callBack() {
    if (kDebugMode) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePageScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: callBack, child: const Text(AutofillHints.name));
  }
}
