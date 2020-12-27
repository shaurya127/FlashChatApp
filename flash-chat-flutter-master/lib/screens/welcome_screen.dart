// import 'package:flutter/material.dart';
// import 'login_screen.dart';
// import 'registration_screen.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// // import 'package:flutter/lib/src/scheduler/ticker.dart';
// class WelcomeScreen extends StatefulWidget {
//   static const String id = 'welcome_screen';
//
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }
//
// class _WelcomeScreenState extends State<WelcomeScreen>
//     with SingleTickerProviderStateMixin {
//   AnimationController controller;
//   Animation animation;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     controller = AnimationController(
//         duration: Duration(seconds: 5), vsync: this, upperBound: 1.0);
//
//     animation=ColorTween(begin: Colors.blueGrey,end:Colors.white).animate(controller);
//
//
//
//     // animation =CurvedAnimation(parent:controller ,curve:Curves.easeIn );
//     controller.forward();
//     // animation.addStatusListener((status) {
//     //   if(status==AnimationStatus.completed){
//     //     controller.reverse(from: 1.0);
//     //   }
//     //   else if(status== AnimationStatus.dismissed){
//     //     controller.forward();
//     //   }
//     // });
//     controller.addListener(() {
//       setState(() {
//         // print(animation.value);
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//    controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: animation.value,
//       // backgroundColor: Colors.red.withOpacity(controller.value),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Hero(
//                   tag: 'logo',
//                   child: Container(
//                     child: Image.asset('images/logo.png'),
//                     height: 60.0,
//                   ),
//                 ),
//                 TypewriterAnimatedTextKit(
//                   text:['Flash Chat'],
//                   textStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 48.0,
//             ),
//             RoundedButton(),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 16.0),
//               child: Material(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.circular(30.0),
//                 elevation: 5.0,
//                 child: MaterialButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, RegistrationScreen.id);
//                   },
//                   minWidth: 200.0,
//                   height: 42.0,
//                   child: Text(
//                     'Register',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class RoundedButton extends StatelessWidget {
//  RoundedButton({})
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),
//       child: Material(
//         elevation: 10.0,
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(30.0),
//         child: MaterialButton(
//           onPressed: () {
//             Navigator.pushNamed(context, LoginScreen.id);
//           },
//           minWidth: 200.0,
//           height: 42.0,
//           child: Text(
//             'Log In',
//           ),
//         ),
//       ),
//     );
//   }
// }










import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['ShauryaChat'],
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}








