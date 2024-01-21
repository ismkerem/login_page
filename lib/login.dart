import 'package:flutter/material.dart';
import 'package:login_page/signup.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final String _title = "Welcome";
  final String _subtitle = "Login into your account";
  final String _login = "Sign in";
  final String _account = "Don't have an account ?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Column(
            children: [
              Text(_title, style: Theme.of(context).textTheme.headlineMedium),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: widget_constants.subtitle_pad),
                    child: Text(
                      _subtitle,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: widget_constants.subtitle_font,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: widget_constants.card_padding),
                child: Container(
                  height: widget_constants.card_height,
                  width: widget_constants.card_width,
                  child: Card(
                      shadowColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              widget_constants.border_radius_circular)),
                      child: Padding(
                        padding:
                            EdgeInsets.all(widget_constants.card_padding_2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  _login,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            input(
                              title: "E-mail",
                              icon: Icon(Icons.email),
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            input(
                              title: "Password",
                              icon: Icon(Icons.password),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        widget_constants.button_border_radius),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: widget_constants.register_padding),
                              child: InkWell(
                                child: Text(
                                  _account,
                                  style: TextStyle(
                                      fontSize: widget_constants
                                          .register_writing_font,
                                      fontStyle: FontStyle.italic),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const signup()));
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),

    );
  }
}

class input extends StatelessWidget {
  const input(
      {super.key,
      required this.title,
      required this.icon,
      required this.obscureText});
  final String title;
  final Widget icon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: title, prefixIcon: icon),
    );
  }
}

class widget_constants {
  static double subtitle_pad = 110;
  static double subtitle_font = 17;
  static double card_padding = 80;
  static double card_height = 400;
  static double card_width = 350;
  static double border_radius_circular = 25;
  static double card_padding_2 = 20;
  static double button_border_radius = 20;
  static double register_writing_font = 14;
  static double register_padding = 8;
}
