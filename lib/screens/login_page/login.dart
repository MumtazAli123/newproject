import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/user_profile_model.dart';
import 'package:newproject/screens/signing_screen/signing.dart';
import 'package:newproject/services/http_services/http_services.dart';
import 'package:newproject/widgets/button_widgets.dart';
import 'package:newproject/widgets/input_widgets.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController _emailController = TextEditingController();
  // UserProfileModel? authCustomerUser = UserProfileModel();
  // TextEditingController _passwordController = TextEditingController();
  // LoginApiServices _authenticationService = LoginApiServices();
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
          const SizedBox(
            height: 33,
          ),
          _buildInputTextField(),
          const SizedBox(
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
                    // controller: _emailController,
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
                    // controller: _passwordController,
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
                  _buildForgotTextButton(),
                  const SizedBox(
                    height: 21,
                  ),
                  CustomButton(
                      buttonText: "Login",
                      onPressed: () async {
                        // authCustomerUser = await _authenticationService.register(

                        // _emailController.text,
                        // _passwordController.text,
                        // context);
                      })
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

  _buildForgotTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen()));
          },
          child: const Text(
            'Forgot Password',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }

  _buildTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Not Registered ?',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Card(
            elevation: 1,
            child: CustomButton002(
                buttonText2: 'Register',
                icon: Icons.lock,
                onTap: () => const SigningScreen())),
      ],
    );
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
}
