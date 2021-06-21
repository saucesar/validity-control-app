import 'package:flutter/material.dart';
import 'package:validity_control_app/components/inputs/InputText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    this._emailController = TextEditingController();
    this._passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.white,
                  child: InputText(
                    hintText: 'Email',
                    labelText: 'Email',
                    obscureText: false,
                    controller: _emailController,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  child: InputText(
                    hintText: 'Senha',
                    labelText: 'Senha',
                    obscureText: true,
                    controller: _passwordController,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    print(
                        "Login clicked: email -> $email | password: $password");
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.green.withOpacity(0.5);
                        return Colors.blue; // Use the component's default.
                      },
                    ),
                  ),
                  child: Row(children: [Text('Login'), Icon(Icons.login)]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
