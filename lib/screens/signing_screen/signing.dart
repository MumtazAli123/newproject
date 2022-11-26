import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/login_page/login.dart';

import '../../post_screens/post_scrollview.dart';
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
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white12,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  //widget for appbar
  _buildAppbar() {
    return AppBar(
      centerTitle: false,
      title: const Text('Registration'),
      actions: [
        // Text('Joined us Before'),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: const Icon(Icons.lock),
        ),
        const Icon(Icons.more_vert),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildImgBackGround(),
          _buildTextField(),
          _buildTextButton(),
        ],
      ),
    );
  }

  //widget for body
  _buildTextField() {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 400,
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
                      return ('Please enter Name');
                    }
                    return null;
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
                  decoration: UIConfig().inputDecoration('your Password',
                      'Password', Icons.lock, Icons.visibility, togglePassword),
                ),
                const SizedBox(
                  height: 21,
                ),
                //signing button
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('validated');
                    }
                  },
                  child: CustomButton(
                    buttonText: "signin",
                    onPressed: () {
                      showSigninPopup(
                        context,
                        'Signin',
                        'Are you sure to signin',
                        () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SliverAppbar()));
                        },
                        () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglePassword() {
    _obscureText = !_obscureText;
    setState(() {});
  }

  _customDropDown() {
    return const CustomDropDownWidgets();
  }

  _buildImgBackGround() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 219,
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

  _buildTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          'Joined us Before',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Card(
          elevation: 1,
          child: CustomButton002(
            buttonText2: 'Login',
          ),
        )
      ],
    );
  }

  void showSigninPopup(BuildContext context, String s, String t,
      Null Function() param3, Null Function() param4) {}
}
