import 'package:flutter/material.dart';

import '../../widgets/button_widgets.dart';
import '../../widgets/input_widgets.dart';

class SigningScreen extends StatefulWidget {
  const SigningScreen({Key? key}) : super(key: key);

  @override
  State<SigningScreen> createState() => _SigningScreenState();
}

class _SigningScreenState extends State<SigningScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  //widget for appbar
  _buildAppbar() {
    return AppBar(
      title: const Text('Signing Screen'),
    );
  }

  //widget for body
  _buildBody() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //signin text
          const Text('Signing Screen'),
          //email text-field
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
            decoration: UIConfig().inputDecoration(
                'your Email', 'Email', Icons.email, Icons.send, null),
          ),
          //password text-field
          TextFormField(
            obscureText: _obscureText,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 4) {
                return 'Please enter Strong password';
              }
              return null;
            },
            decoration: UIConfig().inputDecoration('your Password', 'Password',
                Icons.lock, Icons.visibility, toogle_Password),
          ),
          //signin button
          InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                print('validated');
              }
            },
            child: const CustomButton(
              buttonText: "signing",
            ),
          ),
        ],
      ),
    );
  }

  void toogle_Password() {
    _obscureText = !_obscureText;
    setState(() {});
  }
}
