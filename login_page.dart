import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      Container(
        height: 112.h,
        width: 1100.w,
       decoration: BoxDecoration(
         image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSavALyqGfk1DMK2WfSlpELwmnVAi0uCh-F3vXkASqN4VuiiWlAshINf-aKm1ECOCLHbWg&usqp=CAU",),fit: BoxFit.fill),
       ),
        child: Column(
          children: [
            SizedBox(height:12.h,),
            Text("Food Go!",style:GoogleFonts.alike(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),),
            Text("Get your favoret food frome here",style: TextStyle(fontSize: 20),),

            SizedBox(height: 60.h,),

            Center(
              child: Container(
                height: 10.h,
                width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red),
                ),

                child: Column(
                  children: [
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: GestureDetector(
                         onTap: (){
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                         },
                         child: Container(
                    height: 8.4.h,
                    width: 17.5.w,
                    decoration: BoxDecoration(
                          color: Color(0xfffd0807),
                          borderRadius: BorderRadius.circular(10),
                    ),
                           child: Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.white,),
                  ),
                       ),
                     ),
                ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
