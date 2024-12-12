import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../res/colorSchema.dart';
import '../../../res/image.dart';
import '../../../res/text_style.dart';
class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(ScreenUtil().statusBarHeight + 10),
          Padding(
            padding: const EdgeInsets.only(left: 36.0,right: 36,bottom: 26),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                    topLeft: Radius.zero,
                    topRight: Radius.zero,

                  ),

                  color: ColorSelect.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -1),
                      // spreadRadius: -27,
                      blurRadius: 71.8,
                      color: ColorSelect.primarycolor.withOpacity(0.25),
                    ),
                  ]),
              child: Row(
                children: [
                  Text("Groups",
                      style: AppTextStyles.heading18
                          .copyWith(color: ColorSelect.deepBlueColor)),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorSelect.whiteColor,
                        borderRadius: BorderRadius.circular(53),
                        boxShadow: [
                          BoxShadow(
                              color:
                              ColorSelect.primarycolor.withOpacity(0.25),
                              offset: Offset(0, 4),
                              spreadRadius: -4,
                              blurRadius: 10.6),
                        ]),
                    child: Image(
                      image: AssetImage(AppImage.equalLineImage),
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const Gap(32),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorSelect.whiteColor,
                        borderRadius: BorderRadius.circular(53),
                        boxShadow: [
                          BoxShadow(
                              color:
                              ColorSelect.primarycolor.withOpacity(0.25),
                              offset: Offset(0, 4),
                              spreadRadius: -4,
                              blurRadius: 10.6),
                        ]),
                    child: Image(
                      image: AssetImage(AppImage.searchImage),
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const Gap(32),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorSelect.whiteColor,
                        borderRadius: BorderRadius.circular(53),
                        boxShadow: [
                          BoxShadow(
                              color:
                              ColorSelect.primarycolor.withOpacity(0.25),
                              offset: Offset(0, 4),
                              spreadRadius: -4,
                              blurRadius: 10.6),
                        ]),
                    child: Image(
                      image: AssetImage(AppImage.notificationImage),
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          ListView.builder(scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("23"),
              );
            },
          )
        ],
      ),
    );
  }
}
