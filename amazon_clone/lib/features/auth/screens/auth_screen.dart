import 'package:amazon_clone/Constants/global_variables.dart';
import 'package:amazon_clone/common/custom_button.dart';
import 'package:amazon_clone/common/custom_textfield.dart';
import 'package:flutter/material.dart';

enum Auth { Signin, Singup }

class AuthScreen extends StatefulWidget {
  static const routename = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.Singup;
  final _signupformkey = GlobalKey<FormState>();
  final _signinformkey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              tileColor: _auth == Auth.Singup
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundCOlor,
              title: const Text(
                "Create Account.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.Singup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
            ),
            if (_auth == Auth.Singup)
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(8),
                child: Form(
                    child: Column(
                  key: _signupformkey,
                  children: [
                    CustomTextfield(
                      controller: _namecontroller,
                      hintext: "Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _emailcontroller,
                      hintext: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _passwordcontroller,
                      hintext: "Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(text: "Sign Up", ontap: () {})
                  ],
                )),
              ),
            ListTile(
              tileColor: _auth == Auth.Signin
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundCOlor,
              title: const Text(
                "Sign In.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.Signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
            ),
            if (_auth == Auth.Signin)
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(8),
                child: Form(
                    child: Column(
                  key: _signinformkey,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _emailcontroller,
                      hintext: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _passwordcontroller,
                      hintext: "Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(text: "Sign In", ontap: () {})
                  ],
                )),
              ),
          ],
        ),
      )),
    );
  }
}
