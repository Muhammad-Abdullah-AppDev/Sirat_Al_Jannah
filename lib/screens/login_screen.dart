import 'package:flutter/material.dart';
import 'package:sirat_al_jannah/constants/app_colors.dart';
import 'package:sirat_al_jannah/screens/home_screen.dart';
import 'package:sirat_al_jannah/screens/signUp_screen.dart';
import '../header_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isPassVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            width: double.infinity,
              height: 200,
              child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.backgroundColor,
                              AppColors.green,
                            ]
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("~ Sirat Al-Jannah ~",
                        style: TextStyle(
                          fontSize: 30,
                          color: AppColors.appBarColor
                        ),),
                      ],
                    ),
                  ),
          ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Account  Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              fillColor: AppColors.primaryColor,
                              filled: true,
                              hintText: "Enter Email",
                              labelText: "Email",
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(color: Colors.black,),
                              floatingLabelStyle: TextStyle(color: Colors.green,
                                  fontSize: 22),
                              //labelStyle: TextStyle(fontSize: 20,
                              //color: Colors.black)
                            )
                        ),
                        SizedBox(height: 30,),
                        TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: !isPassVisible,
                            decoration: InputDecoration(
                                fillColor: AppColors.primaryColor,
                                filled: true,
                                hintText: 'Enter Password',
                                labelText: 'Password',
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                hintStyle: TextStyle(color: Colors.black),
                                labelStyle: TextStyle(color: Colors.black,),
                                floatingLabelStyle: TextStyle(color: Colors.green,
                                    fontSize: 22),
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    isPassVisible = !isPassVisible;
                                  });
                                },
                                    icon: Icon(isPassVisible ?
                                    Icons.remove_red_eye_outlined :
                                    Icons.visibility_off,
                                      //color: Colors.blue,
                                      ))
                            )
                        ),
                        SizedBox(height: 35,),
                        // CustomButton(text: 'Login',
                        //     onPressed: (){
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => HomeScreen()));
                        //     })
                    InkWell(
                      onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: Text('Login',
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.primaryColor
                          ),
                          ),
                        ),
                      ),
                    )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ",
                        style: TextStyle(
                            fontSize: 18),),
                      TextButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                          child: Text(" Sign Up!",
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),))

                    ],
                  )
                ],
              ),
            )
        ]
        ),
      ),
    );
  }
}
