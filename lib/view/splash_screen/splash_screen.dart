import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';

import '../../utils/images-constants/image_constants.dart';
import '../username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => UsernameScreen(),
            )));
  }

  // bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return 
    // isLoading == true
        // ? Center(
        //     child: CircularProgressIndicator(
        //     color: Colors.red,
        //   ))
        // : 
        Scaffold(
            backgroundColor: ColorConstant.backgroundColor,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55.62,
                    width: 207,
                    color: Colors.black,
                    child: Image.asset(ImageConstant.logo),
                  ),
                  SizedBox(height: 20,),
                CircularProgressIndicator(color: ColorConstant.bannerColor,)
                ],
              ),
            ),
          );
  }
}
