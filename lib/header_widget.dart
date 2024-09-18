import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// import 'package:flutter/material.dart';
//
// class HeaderWidget extends StatefulWidget {
//   final double _height;
//
//   const HeaderWidget(this._height, {Key? key}) : super(key: key);
//
//   @override
//   _HeaderWidgetState createState() => _HeaderWidgetState(
//     _height,
//   );
// }
//
// class _HeaderWidgetState extends State<HeaderWidget> {
//   double _height;
//
//   _HeaderWidgetState(
//       this._height,
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     return Container(
//       child: Stack(
//         children: [
//           ClipPath(
//             child: Container(
//               decoration: new BoxDecoration(
//                 gradient: new LinearGradient(
//                     colors: [
//                       Theme.of(context).colorScheme.primary.withOpacity(0.4),
//                       Theme.of(context).colorScheme.primary.withOpacity(0.4),
//                     ],
//                     begin: const FractionalOffset(0.0, 0.0),
//                     end: const FractionalOffset(1.0, 0.0),
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.clamp),
//               ),
//             ),
//             clipper: new ShapeClipper([
//               Offset(width / 5, _height),
//               Offset(width / 10 * 5, _height - 60),
//               Offset(width / 5 * 4, _height + 20),
//               Offset(width, _height - 18)
//             ]),
//           ),
//           ClipPath(
//             child: Container(
//               decoration: new BoxDecoration(
//                 gradient: new LinearGradient(
//                     colors: [
//                       Theme.of(context).colorScheme.primary.withOpacity(0.4),
//                       Theme.of(context).colorScheme.primary.withOpacity(0.4),
//                     ],
//                     begin: const FractionalOffset(0.0, 0.0),
//                     end: const FractionalOffset(1.0, 0.0),
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.clamp),
//               ),
//             ),
//             clipper: new ShapeClipper([
//               Offset(width / 3, _height + 20),
//               Offset(width / 10 * 8, _height - 60),
//               Offset(width / 5 * 4, _height - 60),
//               Offset(width, _height - 20)
//             ]),
//           ),
//           ClipPath(
//             child: Container(
//               decoration: new BoxDecoration(
//                 gradient: new LinearGradient(
//                     colors: [
//                       Theme.of(context).colorScheme.primary,
//                       Theme.of(context).colorScheme.primary,
//                     ],
//                     begin: const FractionalOffset(0.0, 0.0),
//                     end: const FractionalOffset(1.0, 0.0),
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.clamp),
//               ),
//             ),
//             clipper: new ShapeClipper([
//               Offset(width / 5, _height),
//               Offset(width / 2, _height - 40),
//               Offset(width / 5 * 4, _height - 80),
//               Offset(width, _height - 20)
//             ]),
//           ),
//           Container(
//             height: _height - 30,
//             child: Center(
//               child: Container(
//                 margin: EdgeInsets.all(5),
//                 // padding: EdgeInsets.only(
//                 //   left: 0.5.h,
//                 //   top: 2.h,
//                 //   right: 0.5.h,
//                 //   bottom: 20.h,
//                 // ),
//                 // decoration: BoxDecoration(
//                 //   // borderRadius: BorderRadius.circular(20),
//                 //   borderRadius: BorderRadius.only(
//                 //     topLeft: Radius.circular(100),
//                 //     topRight: Radius.circular(100),
//                 //     bottomLeft: Radius.circular(60),
//                 //     bottomRight: Radius.circular(60),
//                 //   ),
//                 //   border: Border.all(width: 5, color: Colors.white),
//                 // ),
//
//                 child: Image.asset("assets/images/app_logo.png",
//                     scale: 2, fit: BoxFit.cover),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ShapeClipper extends CustomClipper<Path> {
//   List<Offset> _offsets = [];
//   ShapeClipper(this._offsets);
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//
//     path.lineTo(0.0, size.height - 20);
//
//     // path.quadraticBezierTo(size.width/5, size.height, size.width/2, size.height-40);
//     // path.quadraticBezierTo(size.width/5*4, size.height-80, size.width, size.height-20);
//
//     path.quadraticBezierTo(
//         _offsets[0].dx, _offsets[0].dy, _offsets[1].dx, _offsets[1].dy);
//     path.quadraticBezierTo(
//         _offsets[2].dx, _offsets[2].dy, _offsets[3].dx, _offsets[3].dy);
//
//     // path.lineTo(size.width, size.height-20);
//     path.lineTo(size.width, 0.0);
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
