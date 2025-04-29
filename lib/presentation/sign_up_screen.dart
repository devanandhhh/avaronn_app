import 'package:avaronn_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Column(
        children: [ 
          Gap(140),
          Container(
            height: 168,width: MediaQuery.of(context).size.width,
            //color: Colors.red,
            child:
            Row(children: [ 
              SizedBox(height:60,width: 60, child: Image.asset("assets/signup_logo.gif")),
              Text("Fleet",style: GoogleFonts.inter(fontSize: 48,fontStyle: FontStyle.italic,),),Gap(5),
              Text('Wise',style: GoogleFonts.inter(fontSize: 48,fontWeight: FontWeight.bold),)
            ],),
          ),
          Text('data') 

        ],
      ),
    );
  }
}