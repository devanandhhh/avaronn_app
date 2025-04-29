import 'package:avaronn_app/core/colors.dart';
import 'package:avaronn_app/presentation/sign_up_journey/enter_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(60),
            AskingQuestion(
              questionOne: "Verify number",
              questionTwo: "OTP sent to  ",
              questionThree: "+91 9999999999",
              imagepath: "assets/lock_logo.png",
              isImage: true,
            ),
            Gap(40),
            RequiredTextField(text: "Enter OTP",),
            Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Pinput(
                  length: 6,
                  controller: otpController,
                ),
                Gap(5),
                InkWell(
                  child: Text(
                    "Resend in 00:34",
                    style: TextStyle(fontSize: 12),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => EnterNameScreen())),
                )
              ],
            ),
            Expanded(child: Gap(10)),
            Center(
              child: Text(
                "change your mobile number",
                style: TextStyle(
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                    color: baseGreyColor),
              ),
            ),
            Gap(20)
          ],
        ),
      ),
    );
  }
}

class RequiredTextField extends StatelessWidget {
  const RequiredTextField({
    super.key,required this.text
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              color: baseGreyColor,
              fontWeight: FontWeight.w300,
              fontSize: 15),
        ),
        Text("*",style: TextStyle(color: Colors.red),)
      ],
    );
  }
}

class AskingQuestion extends StatelessWidget {
  const AskingQuestion(
      {super.key,
      required this.questionOne,
      required this.questionTwo,
      this.questionThree,
      required this.imagepath,
      required this.isImage});
  final String questionOne;
  final String questionTwo;
  final String? questionThree;
  final String? imagepath;
  final bool isImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionOne,
              style:
                  GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Gap(10),
            Row(
              children: [
                Text(
                  questionTwo,
                  style: TextStyle(color: baseGreyColor, fontSize: 16),
                ),
                Text(
                  questionThree ?? "",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            )
          ],
        ),
        isImage
            ? SizedBox(
                height: 48,
                width: 48,
                child: Image.asset(imagepath!),
              )
            : SizedBox(
                height: 48,
                width: 48,
                child: Center(
                    child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 18, color: baseGreyColor),
                )))
      ],
    );
  }
}
