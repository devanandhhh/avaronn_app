import 'package:avaronn_app/core/colors.dart';
import 'package:avaronn_app/presentation/sign_up_journey/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(140),
            SizedBox(
              height: 168, width: MediaQuery.of(context).size.width,
              //color: Colors.red,
              child: Row(
                children: [
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("assets/signup_logo.gif")),
                  Text(
                    "Fleet",
                    style: GoogleFonts.inter(
                      fontSize: 48,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Gap(5),
                  Text(
                    'Wise',
                    style: GoogleFonts.inter(
                        fontSize: 48, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Gap(20),
            Text(
              "Login or register",
              style: TextStyle(color: baseGreyColor),
            ),
            Gap(10),
            TextFormField(
              decoration: InputDecoration(
                  prefixText: "+91",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            //Gap(190),
            Expanded(child: Gap(10)),
            Column(
              children: [
                Text(
                  "by continuing, you agree to our",
                  style: TextStyle(color: baseGreyColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Term Of Use",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: baseGreyColor)),
                    Text(
                      " and ",
                      style: TextStyle(color: baseGreyColor),
                    ),
                    Text("Privacy Policy",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: baseGreyColor)),
                  ],
                ),
              ],
            ),
            Gap(20),
            CustomContainerButton(
              text: "GET OTP",
              bgcolor: Colors.blueGrey[100],
              fontColor: Colors.blueGrey[700],
              ontap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => OtpScreen())),
            ),
            Gap(20)
          ],
        ),
      ),
    );
  }
}

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton(
      {super.key,
      required this.ontap,
      required this.text,
      required this.bgcolor,
      required this.fontColor});
  final Function()? ontap;
  final String text;
  final Color? bgcolor;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
        )),
      ),
    );
  }
}
