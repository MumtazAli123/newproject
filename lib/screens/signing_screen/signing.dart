import 'package:flutter/material.dart';

import '../../widgets/button_widgets.dart';
import '../../widgets/drop_down_widget.dart';
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
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 350,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  _customDropDown(),
                  const SizedBox(
                    height: 21,
                  ),
                  //signing text

                  //email text-field
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Name';
                      } else if (value!.isNotEmpty) {}
                    },
                    decoration: UIConfig().inputDecoration(
                        'Your Name', 'Name', Icons.person, null, null),
                  ),
                  const SizedBox(
                    height: 21,
                  ),

                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Phone Number';
                      }
                      return null;
                    },
                    decoration: UIConfig().inputDecoration(
                        'your Email', 'Email', Icons.email, null, null),
                  ),
                  const SizedBox(
                    height: 21,
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
                    decoration: UIConfig().inputDecoration(
                        'your Password',
                        'Password',
                        Icons.lock,
                        Icons.visibility,
                        toogle_Password),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  //signin button
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print('validated');
                      }
                    },
                    child: const CustomButton(
                      buttonText: "Submit",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void toogle_Password() {
    _obscureText = !_obscureText;
    setState(() {});
  }

  _customDropDown() {
    return const CustomDropDownWidgets();
  }
}
