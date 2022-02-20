import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/socialbutton.dart';
import '../widgets/textfield.dart';
import '../widgets/textfieldwithicon.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phonecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  bool validatePhone = false;
  bool validatePassword = false;
  bool _isHidden = false;

  Future SignInFunction() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: columnElements(),
    );
  }

  //-------------------------Widget Tree-------------------------------------------
//---------------------------------Widget Tree----------------------------------
  Widget columnElements() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            imageBackground(),
            sign_in_Container(),
          ],
        ),
      ),
    );
  }

  //---------------------------------------------------
  //-> Widget of background
  Widget imageBackground() {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.42,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/logo.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }

  //------------------------------------------------------------------------------
  //-> Button for sign in
  Widget Login() {
    return Container(
      padding: const EdgeInsets.only(right: 55.0, left: 55.0),
      width: MediaQuery.of(context).size.width * 0.6,
      child: RaisedButton(
        color: const Color(0xFFFFCB47),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        onPressed: SignInFunction,
      ),
    );
  }

  //-> I am new User Sign up
  Widget Signup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Text("I am New User"),
        ),
        Container(
          child: FlatButton(
            onPressed: () {},
            child: const Text(
              'Sign up',
              style: TextStyle(color: Color(0xFFFFB005), fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  //-> Container for having all elements with sign in and username
  Widget sign_in_Container() {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            const Text(
              "Sign In",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black38),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            TextInputField(
              hint_text: "phone",
              //label_text: "username",
              controller_text: _phonecontroller,
              show_password: false,
              error_msg: validatePhone ? "valuecannotbeempty" : null,
              FunctionToDo: () {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            // it must be another textinputfield
            TextInputFieldWithIcon(
              hint_text: "password",
              // label_text: "password",
              controller_text: _passwordcontroller,
              icon_widget: _isHidden ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
              show_password: _isHidden,
              error_msg: validatePassword ? "valuecannotbeempty" : null,
              FunctionToDo: () {
                setState(() {
                  _isHidden = !_isHidden;
                });
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            SocialButton(
              image: 'assets/icon/facebook.png',
              buttonText: 'Sign in With Facebook',
              functionToDo: () {
                //TODO:
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            SocialButton(
              image: 'assets/icon/google.png',
              buttonText: 'Sign in With Google',
              functionToDo: () {
                //TODO:
              },
            ),
            Login(),
            const SizedBox(
              height: 1.0,
            ),
            Signup(),
          ],
        ),
      ],
    );
  }
} // end of build
