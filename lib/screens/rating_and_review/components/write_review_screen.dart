import 'dart:io';

import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/rating_and_review/components/comment_form.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);
  @override
  _WriteReviewScreen createState() => _WriteReviewScreen();
}

class _WriteReviewScreen extends State<WriteReviewScreen> {
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? listImageFile = [];
  int rate = 0;
  getMutipleImage() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        setState(() {
          listImageFile = pickedfiles;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: getProportionateScreenWidth(600),
          decoration: const BoxDecoration(
              color: Color(0xfff5f4f4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: ButtonTheme(
              height: getProportionateScreenWidth(280),
              child: Column(children: [
                SizedBox(
                  height: getProportionateScreenWidth(14),
                ),
                Container(
                  width: getProportionateScreenWidth(60),
                  height: getProportionateScreenWidth(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kPrimarySecondColor,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(15),
                ),
                Text(
                  "What is your rate?",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ...List.generate(
                      5,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            rate = index + 1;
                          });
                        },
                        child: rate >= index + 1
                            ? Icon(
                                Icons.star,
                                color: const Color(0xffFFBA49),
                                size: getProportionateScreenWidth(36),
                              )
                            : Icon(
                                Icons.star_outline,
                                color: const Color(0xffFFBA49),
                                size: getProportionateScreenWidth(36),
                              ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                Text(
                  "Please share your opinion",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "about the product",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                const CommentForm(),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            listImageFile != null ? listImageFile!.length : 0,
                            (index) => Container(
                                  margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(20)),
                                  height: getProportionateScreenWidth(104),
                                  width: getProportionateScreenWidth(104),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Image.file(
                                    File(listImageFile![index].path),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                        GestureDetector(
                          onTap: () {
                            getMutipleImage();
                          },
                          child: Container(
                            color: Colors.white60,
                            height: getProportionateScreenWidth(104),
                            width: getProportionateScreenWidth(104),
                            padding:
                                EdgeInsets.all(getProportionateScreenWidth(26)),
                            child: Container(
                              height: getProportionateScreenWidth(52),
                              width: getProportionateScreenWidth(52),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                DefaultButton(text: "Send review"),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
              ])),
        ),
      ],
    );
  }
}
