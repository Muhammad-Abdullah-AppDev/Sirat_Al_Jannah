import 'package:flutter/material.dart';
import 'package:sirat_al_jannah/constants/app_colors.dart';
import 'package:sirat_al_jannah/screens/home_screen.dart';
import 'package:sirat_al_jannah/screens/login_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 22,
      shadowColor: AppColors.lightGreen,
      child: Container(
        color: AppColors.primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPictureSize: Size.square(80),
                decoration: BoxDecoration(
                  color: AppColors.lightBlack
                ),
                margin: EdgeInsets.zero,
                accountName: Text("",
                  //fkroll,
                  style: TextStyle(fontSize: 10),
                ),
                accountEmail: Text("",
                  //email,
                  style: TextStyle(fontSize: 10),
                ),
                // currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  // radius: 20,
                  child: Image.asset('assets/images/profile_avatar.png',
                    height: 50,
                    width: 50,),
                ),
              ),
            ),

            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              leading: Icon(
                Icons.home_outlined,
                color: AppColors.lightGreen,
              ),
              title: Text(
                "Home Page",
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 1));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              leading: Icon(
                Icons.logout,
                color: AppColors.alert,
              ),
              title: Text(
                "Logout",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
