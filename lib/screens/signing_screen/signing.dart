import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/user_profile_model.dart';
import 'package:newproject/screens/login_page/login.dart';
import 'package:newproject/services/http_services/http_services.dart';

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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  UserProfileModel authCustomerUser = UserProfileModel();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginApiServices _authenticationService = LoginApiServices();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.grey.shade200,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  //widget for appbar
  _buildAppbar() {
    return AppBar(
      centerTitle: true,
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
      // backgroundColor: Colors.transparent,
      // elevation: 0,
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // _buildImgBackGround(),
          _buildTextField(),
          // _buildTextButton(),
        ],
      ),
    );
  }

  //widget for body
  _buildTextField() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(21),
        margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: UIConfig().inputDecoration(
                  'Name', 'Enter Name', Icons.person, null, () {}),
            ),
            SizedBox(
              height: 21,
            ),
            TextFormField(
              controller: _emailController,
              decoration: UIConfig().inputDecoration(
                  'email', 'Enter ur Email', Icons.email, null, () {}),
            ),
            SizedBox(
              height: 21,
            ),
            TextFormField(
              controller: _phoneController,
              decoration: UIConfig().inputDecoration('Phone',
                  "Enter ur phone number", Icons.call_end, null, () {}),
            ),
            SizedBox(
              height: 21,
            ),
            TextFormField(
              controller: _passwordController,
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
            CustomButton(
                buttonText: 'Register',
                onPressed: () async {
                  authCustomerUser = await _authenticationService.register2(
                      _nameController.text,
                      _emailController.text,
                      _phoneController,
                      _passwordController.text,
                      context);
                }),
          ],
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
      children: [
        const Text(
          'Joined us Before',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Card(
          elevation: 1,
          child: CustomButton002(
            buttonText2: 'Login',
            icon: Icons.hail,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ),
      ],
    );
  }

  void showSigninPopup(BuildContext context, String s, String t,
      Null Function() param3, Null Function() param4) {}
}
