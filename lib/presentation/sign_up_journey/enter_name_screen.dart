import 'package:avaronn_app/core/colors.dart';
import 'package:avaronn_app/presentation/sign_up_journey/otp_screen.dart';
import 'package:avaronn_app/presentation/sign_up_journey/sign_up_screen.dart';
import 'package:avaronn_app/presentation/sign_up_journey/upload_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EnterNameScreen extends StatelessWidget {
  const EnterNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(60),
            AskingQuestion(
              questionOne: "What shall we call you?",
              questionTwo: "Enter full name as on your ",
              questionThree: "Aadhar Card",
              imagepath: "assets/person_logo.png",
              isImage: true,
            ),
            Gap(40),
            RequiredTextField(text: "Your Full Name"),
            Gap(10),
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
            Expanded(child: Gap(10)),
            CustomContainerButton(
                ontap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => UploadDetailsScreen())),
                text: "SUBMIT",
                bgcolor: Colors.blueGrey[100],
                fontColor: Colors.blueGrey[700]),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
