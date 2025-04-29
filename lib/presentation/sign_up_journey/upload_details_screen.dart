import 'package:avaronn_app/core/colors.dart';
import 'package:avaronn_app/presentation/sign_up_journey/otp_screen.dart';
import 'package:avaronn_app/presentation/sign_up_journey/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UploadDetailsScreen extends StatelessWidget {
  const UploadDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        child: Column(
          children: [
            Gap(60),
            AskingQuestion(
              questionOne: "Identity & Address proof of owner",
              questionTwo: "Raman Ji, get started with document upload!",
              imagepath: "",
              isImage: false,
            ),
            Gap(30),
            RequiredTextField(text: "PAN Card"),
            Gap(10),
            uploadField(),
            Gap(10),
            RequiredTextField(text: "Aadhaar Card Front"),
            Gap(10),
            uploadField(),
            Gap(10),
            RequiredTextField(text: "Aadhaar Card Back"),
            Gap(10),
            uploadField(),
            Expanded(child: Gap(10)),
            CustomContainerButton(
                ontap: () {},
                text: "SUBMIT",
                bgcolor: darkBlueColor,
                fontColor: Colors.white),Gap(20)
          ],
        ),
      ),
    );
  }

  Container uploadField() {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 34,
            width: 92,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Center(
              child: Text("Upload"),
            ),
          ),
          Gap(14)
        ],
      ),
    );
  }
}
