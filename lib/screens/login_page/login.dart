import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/bottom_bar/bottomBar_screen.dart';
import 'package:newproject/widgets/button_widgets.dart';
import 'package:newproject/widgets/input_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('Login'),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildImgBackGround(),
          SizedBox(
            height: 33,
          ),
          _buildInputTextField(),
          SizedBox(
            height: 21,
          ),
          _buildTextButton(),
        ],
      ),
    );
  }

  _buildInputTextField() {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Center(
            child: Container(
              width: 400,
              margin: const EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                children: [
                  const SizedBox(
                    height: 21,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Email';
                      }
                      return null;
                    },
                    decoration: UIConfig().inputDecoration(
                        'Email', 'Your Email', Icons.email, null, () {}),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Strong Password';
                      }
                      return null;
                    },
                    obscureText: _obscureText,
                    decoration: UIConfig().inputDecoration(
                        'Password', 'Password', Icons.lock, Icons.visibility,
                        () {
                      tooglePassword();
                    }),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        if (kDebugMode) {
                          print('validated');
                        }
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomBarScreen()));
                    },
                    child: const CustomButton(buttonText: 'Submit'),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void tooglePassword() {
    _obscureText = !_obscureText;
    setState(() {});
  }

  _buildTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          'Not Registered ?',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Card(
          elevation: 1,
          child: CustomButton002(
            buttonText2: 'Registration',
          ),
        )
      ],
    );
  }

  _buildImgBackGround() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 199,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/dart8.jpeg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 31,
        ),
      ],
    );
  }
}
