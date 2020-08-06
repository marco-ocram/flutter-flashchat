import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/roundbutton.dart';


class WelcomeScreen extends StatefulWidget {
  static  String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1),
    );
    animation= CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
      print(animation.value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'Logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation.value*75,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButton(
              buttoncolor:Colors.lightBlueAccent,
              onpressfnc: () {
                Navigator.pushNamed(context, LoginScreen.id);},
              buttontext: Text('Log In'),
            ),
            RoundButton(
              buttoncolor: Colors.blueAccent,
              onpressfnc: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              buttontext: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}


