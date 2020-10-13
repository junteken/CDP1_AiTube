import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/login_widgets.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';

  // void _submitData(BuildContext ctx) async {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            _buildTextContainer1(),
            _buildLogoImage(),
            _buildTextContainer2(),
            facebookLoginButton(ctx),
            googleLoginButton(ctx),
            kakaoLoginButton(ctx),
            _buildTextContainer3(),
          ],
        ),
      ),
    ));
  }

  Widget _buildTextContainer1() {
    return Container(
      margin: EdgeInsets.only(
        top: 97.0,
        bottom: 11.0,
      ),
      child: Text(
        '텍스트 편집의 시작',
        style: TextStyle(
          fontSize: 15.5,
          color: Hexcolor('#474747'),
        ),
      ),
    );
  }

  Widget _buildLogoImage() {
    return SvgPicture.asset(
      'assets/images/logo.svg',
      //width: 160,
      //height: 44,
    );
  }

}
Widget _buildTextContainer2() {
  return Container(
    margin: EdgeInsets.only(
      top: 180.0,
      bottom: 20.0,
    ),
    child: Text(
      'AiTube의 서비스를 이용하시려면 로그인 해주세요.',
      style: TextStyle(
        fontSize: 14,
        color: Hexcolor('#333333'),
      ),
    ),
  );
}

Widget _buildTextContainer3() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    margin: EdgeInsets.only(
      top: 10.0,
    ),
    child: RichText(
      text: TextSpan(
        text: '회원가입 없이 이용 가능하며 로그인시 ',
        style: TextStyle(
          fontSize: 8,
          color: Hexcolor('#969696'),
        ),
        children: <TextSpan>[
          TextSpan(
            text: '이용약관 ',
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: Hexcolor('#969696'),
            ),
          ),
          TextSpan(
            text: '및',
            style: TextStyle(
              fontSize: 8,
              color: Hexcolor('#969696'),
            ),
          ),
          TextSpan(
            text: '개인정보처리방침',
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: Hexcolor('#969696'),
            ),
          ),
          TextSpan(
            text: '에 동의한 것으로 간주합니다.',
            style: TextStyle(
              fontSize: 8,
              color: Hexcolor('#969696'),
            ),
          )
        ],
      ),
    ),
  );
}







// potentially to this stuff is to be deleted



// void _openSelect(BuildContext ctx) {
// }
// class FindButton extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => FindPage()),
//         );
//       },
//       child: Container(
//         alignment: Alignment(0.0, 0.0),
//         width: 230.0,
//         height: 22.0,
//         child: Text(
//           'Forgot your ID or Password?',
//           style: TextStyle(
//               color: Colors.black54,
//               fontSize: 17.0,
//               decoration: TextDecoration.underline,
//               decorationColor: Colors.black54),
//         ),
//       ),
//     );
//   }
// }
// class SignUpButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => Navigator.of(context).pushNamed(SignUpPage.routeName),
//       child: Container(
//         alignment: Alignment(0.0, 0.0),
//         width: 70.0,
//         height: 22.0,
//         child: Text(
//           'Sign up',
//           style: TextStyle(
//               color: Colors.black54,
//               fontSize: 17.0,
//               decoration: TextDecoration.underline,
//               decorationColor: Colors.black54),
//         ),
//       ),
//     );
//   }
// }
//   @override
// final _userEmail = TextEditingController();
// final _userPassword = TextEditingController();
// final _userId = TextEditingController();
//   final enteredEmail = _userEmail.text;
//   final enteredPassword = _userPassword.text;
//   final enteredId = _userId.text;
//   if (enteredPassword.isEmpty || enteredEmail.isEmpty) {
//     Scaffold.of(ctx)
//         .showSnackBar(SnackBar(content: Text('Please fill in all blanks')));
//     return;
//   }
//
//   try {
//     UserCredential userCredential = await FirebaseAuth.instance
//         .signInWithEmailAndPassword(
//             email: enteredEmail, password: enteredPassword);
//     FirebaseAuth.instance.currentUser.updateProfile(
//       displayName: enteredId,
//     );
//     Navigator.of(ctx).pushNamedAndRemoveUntil(
//         SelectPage.routeName, (Route<dynamic> route) => false);
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'user-not-found') {
//       Scaffold.of(ctx).showSnackBar(
//           SnackBar(content: Text('No user found for that email.')));
//     } else if (e.code == 'wrong-password') {
//       Scaffold.of(ctx).showSnackBar(
//           SnackBar(content: Text('Wrong password provided for that user.')));
//     } else
//       Scaffold.of(ctx).showSnackBar(SnackBar(content: Text(e.toString())));
//   }
// }
//   Navigator.of(ctx).pushNamed(SelectPage.routeName);
