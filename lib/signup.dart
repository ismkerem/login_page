import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final String _title = "Welcome";
  final String _subtitle = "Signup into your account";
  final String _sign = "Signup";


  final _Email = TextEditingController();
  final _Password = TextEditingController();

  @override
  void dispose() {
    _Email.dispose();
    _Password.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body:Column(
        children: [
          Text(_title, style: Theme.of(context).textTheme.headlineMedium),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: widget_constants.subtitle_pad),
                child: Text(
                  _subtitle,
                  style: TextStyle(color: Colors.grey, fontSize: 17,fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(top: widget_constants.card_padding),
            child: Container(
              height: widget_constants.card_height,
              width: widget_constants.card_width,
              child: Card(
                  shadowColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(widget_constants.border_radius_circular)),
                  child: Padding(
                    padding:  EdgeInsets.all(widget_constants.card_padding_2),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              _sign,
                              style: Theme.of(context).textTheme.headlineLarge,
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
                          control: _Email,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        input(
                          title: "Password",
                          icon: Icon(Icons.password),
                          obscureText: true,
                          control: _Password,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(widget_constants.button_border_radius),
                              )),
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
        required this.obscureText,
        required this.control});
  final String title;
  final Widget icon;
  final bool obscureText;
  final TextEditingController control;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: title,
        prefixIcon: icon,
      ),
    );
  }
}
class widget_constants {
  static double subtitle_pad = 100;

  static double card_padding = 80;
  static double card_height = 400;
  static double card_width = 350;
  static double border_radius_circular = 25;
  static double card_padding_2 = 20;
  static double button_border_radius = 20;


}
