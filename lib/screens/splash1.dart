import 'package:cashmatrix/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: OnBoardingSlider(
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          skipTextButton: Text('Skip'),
          trailing: Text('Login'),
          background: [
            Image.asset(
              'assets/happy1.png',
              // fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/happy2.png',
              // fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/happy3.png',
              // fit: BoxFit.cover,
            ),
          ],
          totalPage: 3,
          speed: 1.8,
          pageBodies: [
            Container(
              // padding: const EdgeInsets.symmetric(horizontal: 40),
              // width: double.maxFinite,
              // height: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/happy1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(
                  //   height: 480,
                  // ),
                  // Text('Description Text 1'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      'assets/cashmatrix-logo.png',
                      height: 200,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: const BoxDecoration(
                      color: AppColors.MAIN_COLOR,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(80.0),
                      ),
                    ),
                    child: Text('data'),
                  )
                ],
              ),
            ),
            Container(
              // padding: const EdgeInsets.symmetric(horizontal: 40),
              // width: double.maxFinite,
              // height: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/happy2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text('Description Text 2'),
                ],
              ),
            ),
            Container(
              // padding: const EdgeInsets.symmetric(horizontal: 40),
              // width: double.maxFinite,
              // height: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/happy3.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text('Description Text 3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Splash1 extends StatefulWidget {
//   const Splash1({super.key});

//   @override
//   State<Splash1> createState() => _Splash1State();
// }

// class _Splash1State extends State<Splash1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/happy1.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         // padding: EdgeInsets.only(left: 20.0),
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20.0),
//                 child: Image.asset(
//                   'assets/cashmatrix-logo.png',
//                   height: 200,
//                   width: 200,
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width / 1.3,
//                 height: MediaQuery.of(context).size.height / 4.5,
//                 decoration: const BoxDecoration(
//                   color: AppColors.MAIN_COLOR,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(80.0),
//                   ),
//                 ),
//                 child: Text('data'),
//               )
//             ]),
//       ),
//     );
//   }
// }


