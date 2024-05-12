import 'package:flutter/cupertino.dart';

class AnimationsRoute extends PageRouteBuilder {
  final page;

  AnimationsRoute({this.page})
      : super(
    transitionDuration: const Duration(seconds: 1),
          reverseTransitionDuration: const Duration(seconds: 1),
          pageBuilder: (context, animation, animation2) => page,
          transitionsBuilder: (context, animation, animation2, child) =>
              ScaleTransition(child: child, scale: animation),
        );
}




// import 'package:flutter/cupertino.dart';
//
// class AnimationsRoute extends PageRouteBuilder {
//   final page;
//
//   AnimationsRoute({this.page})
//       : super(
//     transitionDuration: const Duration(seconds: 1),
//     reverseTransitionDuration: const Duration(seconds: 1),
//     pageBuilder: (context, animation, animation2) => page,
//     transitionsBuilder: (context, animation, animation2, child) =>
//         SlideTransition(
//           position: animation.drive(Tween(begin: const Offset(-1, 0),end: const Offset(0, 0))),
//           child: child,
//         ),
//   );
// }



// import 'package:flutter/cupertino.dart';
//
// class AnimationsRoute extends PageRouteBuilder {
//   final page;
//
//   AnimationsRoute({this.page})
//       : super(
//     transitionDuration: const Duration(seconds: 1),
//     reverseTransitionDuration: const Duration(seconds: 1),
//     pageBuilder: (context, animation, animation2) => page,
//     transitionsBuilder: (context, animation, animation2, child) =>
//         RotationTransition(
//           turns: animation,
//           child: child,
//         ),
//   );
// }




// import 'package:flutter/cupertino.dart';
//
// class AnimationsRoute extends PageRouteBuilder {
//   final page;
//
//   AnimationsRoute({this.page})
//       : super(
//     transitionDuration: const Duration(seconds: 2),
//     reverseTransitionDuration: const Duration(seconds: 2),
//     pageBuilder: (context, animation, animation2) => page,
//     transitionsBuilder: (context, animation, animation2, child) =>
//         FadeTransition(
//           opacity: animation,
//           child: child,
//         ),
//   );
// }