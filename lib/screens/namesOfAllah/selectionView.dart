// import 'package:flutter/material.dart';
// import 'package:sirat_al_jannah/constants/app_colors.dart';
// import 'package:sirat_al_jannah/screens/namesOfAllah/namesAllah_SlideView.dart';
// import 'package:sirat_al_jannah/screens/namesOfAllah/namesAllah_StaticView.dart';
//
// class SelectionView extends StatelessWidget {
//   const SelectionView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.backgroundColor,
//         foregroundColor: AppColors.appBarColor,
//         title: Text('Names of ALLAH ALMIGHTY'),),
//       body: Align(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AllahNamesSlideView()));
//               },
//               child: Container(
//                 height: 80,
//                 width: 280,
//                 decoration: BoxDecoration(
//                   color: AppColors.buttonColor,
//                   borderRadius: BorderRadius.circular(12.0)
//                 ),
//                 child: Center(
//                     child: Text('Allah Names In SlideView',
//                       style: TextStyle(fontSize: 20),)),
//               ),
//             ),
//             SizedBox(height: 40,),
//             InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AllahNamesStaticView()));
//               },
//               child: Container(
//                 height: 80,
//                 width: 280,
//                 decoration: BoxDecoration(
//                     color: AppColors.buttonColor,
//                     borderRadius: BorderRadius.circular(12.0)
//                 ),
//                 child: Center(
//                     child: Text('Allah Names In StaticView',
//                         style: TextStyle(fontSize: 20)),
//                       ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
