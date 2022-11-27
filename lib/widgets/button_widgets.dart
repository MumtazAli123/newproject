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
  final IconData icon;
  const CustomButton002({
    Key? key,
    required this.buttonText2,
    void Function()? onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(icon),
          Text(
            buttonText2,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ],
      ),
    );
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
