import 'package:art_folks/res/image.dart';
import 'package:art_folks/res/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../res/colorSchema.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child:
          Column(
            children: [
              Gap(ScreenUtil().statusBarHeight + 5),
              Container(
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
                    Text("Feed",
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
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Number of items to display
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorSelect.whiteColor,
                              borderRadius: BorderRadius.circular(41),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorSelect.primarycolor
                                        .withOpacity(0.25),
                                    offset: const Offset(1, 2),
                                    // spreadRadius: 27,
                                    blurRadius: 2),
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 16, bottom: 8),
                                child: Text("Friends",
                                    style: AppTextStyles.heading16.copyWith(
                                        color: ColorSelect.blackColor)),
                              ),
                              const Gap(12),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.5),
                                child: Image(
                                  image: AssetImage(AppImage.sunGlassImage),
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(8),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorSelect.whiteColor,
                              borderRadius: BorderRadius.circular(41),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorSelect.primarycolor
                                        .withOpacity(0.25),
                                    offset: Offset(1, 2),
                                    // spreadRadius: -27,
                                    blurRadius: 2),
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 16, bottom: 8),
                                child: Text("Recent",
                                    style: AppTextStyles.heading16.copyWith(
                                        color: ColorSelect.blackColor)),
                              ),
                              const Gap(12),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.5),
                                child: Image(
                                  image: AssetImage(AppImage.hatFaceImage),
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(8),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorSelect.whiteColor,
                              borderRadius: BorderRadius.circular(41),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorSelect.primarycolor
                                        .withOpacity(0.25),
                                    offset: Offset(1, 2),
                                    // spreadRadius: -27,
                                    blurRadius: 2),
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 16, bottom: 8),
                                child: Text("My upload",
                                    style: AppTextStyles.heading16.copyWith(
                                        color: ColorSelect.blackColor)),
                              ),
                              const Gap(12),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.5),
                                child: Image(
                                  image: AssetImage(AppImage.partyFaceImage),
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(8),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorSelect.whiteColor,
                              borderRadius: BorderRadius.circular(41),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorSelect.primarycolor
                                        .withOpacity(0.25),
                                    offset: Offset(1, 2),
                                    // spreadRadius: -27,
                                    blurRadius: 2),
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 16, bottom: 8),
                                child: Text("My upload",
                                    style: AppTextStyles.heading16.copyWith(
                                        color: ColorSelect.blackColor)),
                              ),
                              const Gap(12),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.5),
                                child: Image(
                                  image: AssetImage(AppImage.partyFaceImage),
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorSelect.skyBlueColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, top: 16, bottom: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.profileImageImage),
                            width: 32,
                            height: 32,
                          ),
                          const Gap(12),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sujee",
                                    style: AppTextStyles.heading15.copyWith(
                                        color: ColorSelect.blackColor)),
                                const Gap(4),
                                Text("September 28,2024",
                                    style: AppTextStyles.heading11
                                        .copyWith(color: ColorSelect.greyColor))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(7),
                      Column(
                        children: [Image(image: AssetImage(AppImage.images9))],
                      ),
                      const Gap(16),
                      Text(
                        "Photos from the recent chemistry lab experiment,",
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: AppTextStyles.heading14
                            .copyWith(color: ColorSelect.blackColor),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "showcasing key moments and results",
                          style: AppTextStyles.heading14
                              .copyWith(color: ColorSelect.blackColor),
                        ),
                        TextSpan(
                          text: " See more",
                          style: AppTextStyles.heading17
                              .copyWith(color: ColorSelect.primarycolor),
                        ),
                      ])),
                      const Gap(24),
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.chatNotificationImage),
                            width: 24,
                            height: 24,
                            color: ColorSelect.blackColor,
                          ),
                          const Gap(8),
                          Text("22",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.favoriteImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("14",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.forwardLineImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("4",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorSelect.whiteColor,
                                borderRadius: BorderRadius.circular(41),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorSelect.primarycolor
                                          .withOpacity(0.25),
                                      offset: Offset(1, 2),
                                      // spreadRadius: -27,
                                      blurRadius: 2),
                                ]),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 16, bottom: 8),
                                  child: Text("Download",
                                      style: AppTextStyles.heading16.copyWith(
                                          color: ColorSelect.blackColor)),
                                ),
                                const Gap(12),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.5),
                                  child: Image(
                                    image:
                                        AssetImage(AppImage.downloadLineImage),
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(16),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorSelect.skyBlueColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, top: 16, bottom: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.profileImageImage),
                            width: 32,
                            height: 32,
                          ),
                          const Gap(12),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sujee",
                                    style: AppTextStyles.heading15.copyWith(
                                        color: ColorSelect.blackColor)),
                                const Gap(4),
                                Text("September 28,2024",
                                    style: AppTextStyles.heading11
                                        .copyWith(color: ColorSelect.greyColor))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(7),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorSelect.whiteColor),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, top: 19, bottom: 19),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(AppImage.bookOpenImage),
                                width: 29,
                                height: 35,
                              ),
                              const Gap(12),
                              Text("Biology_chapter_5_Notes.docx",
                                  style: AppTextStyles.heading14
                                      .copyWith(color: ColorSelect.greyColor))
                            ],
                          ),
                        ),
                      ),
                      const Gap(16),
                      Text(
                        "Photos from the recent chemistry lab experiment,",
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: AppTextStyles.heading14
                            .copyWith(color: ColorSelect.blackColor),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "showcasing key moments and results",
                          style: AppTextStyles.heading14
                              .copyWith(color: ColorSelect.blackColor),
                        ),
                        TextSpan(
                          text: " See more",
                          style: AppTextStyles.heading17
                              .copyWith(color: ColorSelect.primarycolor),
                        ),
                      ])),
                      const Gap(24),
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.chatNotificationImage),
                            width: 24,
                            height: 24,
                            color: ColorSelect.blackColor,
                          ),
                          const Gap(8),
                          Text("22",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.favoriteImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("14",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.forwardLineImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("4",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorSelect.whiteColor,
                                borderRadius: BorderRadius.circular(41),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorSelect.primarycolor
                                          .withOpacity(0.25),
                                      offset: Offset(1, 2),
                                      // spreadRadius: -27,
                                      blurRadius: 2),
                                ]),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 16, bottom: 8),
                                  child: Text("Download",
                                      style: AppTextStyles.heading16.copyWith(
                                          color: ColorSelect.blackColor)),
                                ),
                                const Gap(12),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.5),
                                  child: Image(
                                    image:
                                        AssetImage(AppImage.downloadLineImage),
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(16),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorSelect.skyBlueColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, top: 16, bottom: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.profileImageImage),
                            width: 32,
                            height: 32,
                          ),
                          const Gap(12),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sujee",
                                    style: AppTextStyles.heading15.copyWith(
                                        color: ColorSelect.blackColor)),
                                const Gap(4),
                                Text("September 28,2024",
                                    style: AppTextStyles.heading11
                                        .copyWith(color: ColorSelect.greyColor))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(7),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorSelect.whiteColor),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, top: 19, bottom: 19),
                          child: Row(
                            children: [
                              Icon(Icons.picture_as_pdf,
                                  size: 25, color: ColorSelect.redColor),
                              const Gap(12),
                              Text("Complete guide Macroeconomics.pdf",
                                  maxLines: 1,
                                  style: AppTextStyles.heading14
                                      .copyWith(color: ColorSelect.greyColor))
                            ],
                          ),
                        ),
                      ),
                      const Gap(16),
                      Text(
                        "Photos from the recent chemistry lab experiment,",
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: AppTextStyles.heading14
                            .copyWith(color: ColorSelect.blackColor),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "showcasing key moments and results",
                          style: AppTextStyles.heading14
                              .copyWith(color: ColorSelect.blackColor),
                        ),
                        TextSpan(
                          text: " See more",
                          style: AppTextStyles.heading17
                              .copyWith(color: ColorSelect.primarycolor),
                        ),
                      ])),
                      const Gap(24),
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.chatNotificationImage),
                            width: 24,
                            height: 24,
                            color: ColorSelect.blackColor,
                          ),
                          const Gap(8),
                          Text("22",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.favoriteImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("14",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.forwardLineImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("4",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorSelect.whiteColor,
                                borderRadius: BorderRadius.circular(41),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorSelect.primarycolor
                                          .withOpacity(0.25),
                                      offset: Offset(1, 2),
                                      // spreadRadius: -27,
                                      blurRadius: 2),
                                ]),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 16, bottom: 8),
                                  child: Text("Download",
                                      style: AppTextStyles.heading16.copyWith(
                                          color: ColorSelect.blackColor)),
                                ),
                                const Gap(12),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.5),
                                  child: Image(
                                    image:
                                        AssetImage(AppImage.downloadLineImage),
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(16),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorSelect.skyBlueColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, top: 16, bottom: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.profileImageImage),
                            width: 32,
                            height: 32,
                          ),
                          const Gap(12),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sujee",
                                    style: AppTextStyles.heading15.copyWith(
                                        color: ColorSelect.blackColor)),
                                const Gap(4),
                                Text("September 28,2024",
                                    style: AppTextStyles.heading11
                                        .copyWith(color: ColorSelect.greyColor))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(7),
                      Column(
                        children: [Image(image: AssetImage(AppImage.images9))],
                      ),
                      const Gap(16),
                      Text(
                        "Photos from the recent chemistry lab experiment,",
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: AppTextStyles.heading14
                            .copyWith(color: ColorSelect.blackColor),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "showcasing key moments and results",
                          style: AppTextStyles.heading14
                              .copyWith(color: ColorSelect.blackColor),
                        ),
                        TextSpan(
                          text: " See more",
                          style: AppTextStyles.heading17
                              .copyWith(color: ColorSelect.primarycolor),
                        ),
                      ])),
                      const Gap(24),
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImage.chatNotificationImage),
                            width: 24,
                            height: 24,
                            color: ColorSelect.blackColor,
                          ),
                          const Gap(8),
                          Text("22",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.favoriteImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("14",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Gap(24),
                          Image(
                            image: AssetImage(AppImage.forwardLineImage),
                            width: 24,
                            height: 24,
                          ),
                          const Gap(8),
                          Text("4",
                              style: AppTextStyles.heading10
                                  .copyWith(color: ColorSelect.blackColor)),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorSelect.whiteColor,
                                borderRadius: BorderRadius.circular(41),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorSelect.primarycolor
                                          .withOpacity(0.25),
                                      offset: Offset(1, 2),
                                      // spreadRadius: -27,
                                      blurRadius: 2),
                                ]),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 16, bottom: 8),
                                  child: Text("Download",
                                      style: AppTextStyles.heading16.copyWith(
                                          color: ColorSelect.blackColor)),
                                ),
                                const Gap(12),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.5),
                                  child: Image(
                                    image:
                                        AssetImage(AppImage.downloadLineImage),
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
