import 'package:flutter/material.dart';
import 'package:newproject/widgets/button_widgets.dart';
import 'package:newproject/widgets/input_widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

_buildAppBar() {
  return AppBar(
    title: const Text('Forgot Password'),
    // leading: IconButton(
    //   icon: const Icon(Icons.message),
    //   onPressed: () {},
    // ),
    actions: const [Icon(Icons.notifications), Icon(Icons.search)],
    flexibleSpace: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft)),
    ),
  );
}

_buildBody() {
  return Container(
    margin: const EdgeInsets.all(21),
    child: Column(
      children: [
        const SizedBox(
          height: 21,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(21),
            child: const Text(
                'Enter Your Email or Phone Number we will send you (OTP)'),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        TextFormField(
          decoration: UIConfig().inputDecoration(
              'Email', 'Email', Icons.email, Icons.call_end, () {}),
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomButton(buttonText: 'Submit')
      ],
    ),
  );
}
