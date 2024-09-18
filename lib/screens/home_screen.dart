import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:sirat_al_jannah/components/my_drawer.dart';
import 'package:sirat_al_jannah/constants/app_colors.dart';
import 'package:sirat_al_jannah/screens/namesOfAllah/namesAllah_StaticView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final hijriCalendar = HijriCalendar.now();

  @override
  Widget build(BuildContext context) {

    final now = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(now);
    final formattedTime = DateFormat('HH:mm a').format(now);

    return Scaffold(
      backgroundColor: AppColors.lightWhite,
        drawer: MyDrawer(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  //title: Text("Your App Title"),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/home_bg.png', // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${hijriCalendar.toFormat("dd MMMM yyyy")}',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Text('${hijriCalendar.getDayName()}',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text(
                            formattedDate,
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            formattedTime,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.symmetric(vertical: 4),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22.0)
                                      ),
                                      child: Image.asset('assets/images/prayer.png')
                                    ),
                                    Text('Prayer Time')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.symmetric(vertical: 4),
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0)
                                        ),
                                        child: Image.asset('assets/images/tasbeeh.png')
                                    ),
                                    Text('Tasbeeh'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.symmetric(vertical: 4),
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0)
                                        ),
                                        child: Image.asset('assets/images/Al_Quran.png')
                                    ),
                                    Text('Quran Verses'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => AllahNamesStaticView()));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(vertical: 4),
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18.0)
                                          ),
                                          child: Image.asset('assets/images/Allah_names.png',
                                          fit: BoxFit.fill,)
                                      ),
                                    ),
                                    Text('Allah Names')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}