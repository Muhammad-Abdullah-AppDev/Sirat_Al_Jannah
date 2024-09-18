// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:sirat_al_jannah/components/containerAllahName.dart';
// import 'package:sirat_al_jannah/constants/app_colors.dart';
//
// class AllahNamesSlideView extends StatefulWidget {
//   const AllahNamesSlideView({super.key});
//
//   @override
//   State<AllahNamesSlideView> createState() => _AllahNamesSlideViewState();
// }
//
// class _AllahNamesSlideViewState extends State<AllahNamesSlideView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.lightWhite,
//       appBar: AppBar(
//         title: Text('Names Of ALLAH ALMIGHTY'),
//         backgroundColor: AppColors.backgroundColor,
//         foregroundColor: AppColors.appBarColor,
//       ),
//         body: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20),
//               child: BannerSlider(),
//             )));
//   }
// }
//
// class BannerSlider extends StatefulWidget {
//   const BannerSlider({super.key});
//
//   @override
//   State<BannerSlider> createState() => _BannerSliderState();
// }
//
// class _BannerSliderState extends State<BannerSlider> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         CarouselSlider(
//           items: [
//             ContainerAllahName(
//                 text1: '1',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '2',
//                 text2: 'الرَّحِيمُ',
//                 text3: 'AR-RAHEEM',
//                 text4: 'The Merciful'),
//
//             ContainerAllahName(
//                 text1: '3',
//                 text2: 'الْمَلِكُ',
//                 text3: 'AL-MALIK',
//                 text4: 'The King'),
//
//             ContainerAllahName(
//                 text1: '4',
//                 text2: 'الْقُدُّوسُ',
//                 text3: 'AL-QUDDUS',
//                 text4: 'The Most Sacred'),
//
//             ContainerAllahName(
//                 text1: '5',
//                 text2: 'السَّلاَمُ',
//                 text3: 'AS-SALAM',
//                 text4: 'The Source of Peace'),
//
//             ContainerAllahName(
//                 text1: '6',
//                 text2: 'الْمُؤْمِنُ',
//                 text3: 'AL-MU’MIN',
//                 text4: 'The Infuser of Faith'),
//
//             ContainerAllahName(
//                 text1: '7',
//                 text2: 'الْمُهَيْمِنُ',
//                 text3: 'AL-MUHAYMIN',
//                 text4: 'The Preserver of Safety'),
//
//             ContainerAllahName(
//                 text1: '8',
//                 text2: 'الْعَزِيزُ',
//                 text3: 'AL-AZIZ',
//                 text4: 'All Mighty'),
//
//             ContainerAllahName(
//                 text1: '9',
//                 text2: 'الْجَبَّارُ',
//                 text3: 'AL-JABBAR',
//                 text4: 'The Compeller'),
//
//             ContainerAllahName(
//                 text1: '10',
//                 text2: 'ُالْمُتَكَبِّر',
//                 text3: 'AL-MUTAKABBIR',
//                 text4: 'The Supreme'),
//
//             ContainerAllahName(
//                 text1: '11',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '12',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '13',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '14',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '15',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '16',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '17',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '18',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '19',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '20',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '21',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '22',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '23',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '24',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '25',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '26',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '27',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '28',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//             ContainerAllahName(
//                 text1: '29',
//                 text2: 'الرَّحْمَنُ',
//                 text3: 'AR-RAHMAAN',
//                 text4: 'The Beneficent'),
//
//           ],
//
//           //Slider Container properties
//           options: CarouselOptions(
//               height: MediaQuery.of(context).size.height * 0.8,
//               enlargeCenterPage: true,
//               initialPage: 0,
//               autoPlay:false,
//               aspectRatio: 16 / 9,
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enableInfiniteScroll: true,
//               //autoPlayAnimationDuration: Duration(milliseconds: 800),
//               viewportFraction: 0.8,
//               scrollDirection: Axis.horizontal,
//               disableCenter: false,
//               pauseAutoPlayOnTouch: true
//           ),
//         ),
//       ],
//     );
//   }
// }