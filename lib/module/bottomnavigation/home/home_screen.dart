import 'package:art_folks/res/colorSchema.dart';
import 'package:art_folks/res/image.dart';
import 'package:art_folks/res/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF1A60E2).withOpacity(1),
                    const Color(0xFF437CE7).withOpacity(1),
                    const Color(0xFF6B98EC).withOpacity(1),
                    const Color(0xFFFFFFFF).withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: ColorSelect.primarycolor.withOpacity(0.25),
                    spreadRadius: -27,
                    blurRadius: 71.8,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,  right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(ScreenUtil().statusBarHeight+20),
        
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Image(
                          image: AssetImage(AppImage.images3),
                          width: 34,
                          height: 34,
                        ),
                        const Gap(12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome back,Sujee!",
                                style: AppTextStyles.heading12
                                    .copyWith(color: ColorSelect.lightWhiteColor)),
                            Text("Resume Pending",
                                style: AppTextStyles.heading12
                                    .copyWith(color: ColorSelect.lightWhiteColor)),
                          ],
                        ),
                        const Spacer(),
                        const Gap(32),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: ColorSelect.whiteColor),
                          child: const Icon(
                            Icons.notifications_outlined,
                            size: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Gap(58.5),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorSelect.primarycolor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: ColorSelect.primarycolor.withOpacity(0.25),
                            spreadRadius: -25,
                            blurRadius: 52.2,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 19.0, bottom: 20, right: 22, left: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHeaderColumn(
                              image: AppImage.images4,
                              header: "My Courses",
                            ),
                            buildHeaderColumn(
                              image: AppImage.images5,
                              header: "Notes",
                            ),
                            buildHeaderColumn(
                              image: AppImage.images6,
                              header: "My Courses",
                            ),
                            buildHeaderColumn(
                              image: AppImage.images7,
                              header: "Assignments",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             
            ),
            const Gap(25),
        
            Text("Success stories of our students",
                style: AppTextStyles.heading11
                    .copyWith(color: ColorSelect.subheadingsecolor)),
            const Gap(16),
            SizedBox(height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of items to display
                itemBuilder: (context, index) {
                  return
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        
                        children: [
                          Image(
                            image: AssetImage(AppImage.images8),
                            width: 98.53,
                            height: 92,
                          ),
                          Gap(12),
                          Image(
                            image: AssetImage(AppImage.images8),
                            width: 98.53,
                            height: 92,
                          ),
                          Gap(12),
                          Image(
                            image: AssetImage(AppImage.images8),
                            width: 98.53,
                            height: 92,
                          ),
        
                        ],
                      ),
                    );
                },
              ),
            ),
        
        
            const Gap(32),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  Text("Recomanded Course",
                      style: AppTextStyles.heading10
                          .copyWith(color: ColorSelect.blackColor)),
                  const Spacer(),
                  Text("See all",
                      style: AppTextStyles.heading10
                          .copyWith(color: const Color(0xFF1A60E2))),
                  const Gap(7),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFEFF7FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage(AppImage.images9),
                      ),
                      const Gap(11.9),
                      Text("Basic Neurobiology",
                          style: AppTextStyles.heading14
                              .copyWith(color: const Color(0xFF000000))),
                      const Gap(8),
                      Text(
                          "This course covers the fundamental principle of the",
                          style: AppTextStyles.heading12
                              .copyWith(color: const Color(0xFF4E4E4E))),
                      Text("nervous system,including neuron function",
                          style: AppTextStyles.heading12
                              .copyWith(color: const Color(0xFF4E4E4E))),
                      Text("neurotransmission and brain anatomy",
                          style: AppTextStyles.heading12
                              .copyWith(color: const Color(0xFF4E4E4E))),
                      const Gap(16),
                      Text("₹ 15000 ₹ 8,500",
                          style: AppTextStyles.heading15
                              .copyWith(color: const Color(0xFF1B4BB2))),
                      const Gap(8),
                      Text("Enroll now",
                          style: AppTextStyles.heading15
                              .copyWith(color: const Color(0xFF1B4BB2))),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(23),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  Text("Pending Assignment",
                      style: AppTextStyles.heading10
                          .copyWith(color: const Color(0xFF121212))),
                  const Spacer(),
                  Text("See all",
                      style: AppTextStyles.heading10
                          .copyWith(color: const Color(0xFF1A60E2))),
                  const Gap(7),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,top:24 ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Column(
                            children: [
                              Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                              Text("2/8 Assignments Completed",style: AppTextStyles.heading14.copyWith(color:ColorSelect.blueColor ),),
                            ],
                          ),
        
                        ],
                      ),
                      const Gap(34),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: Row(
                          children: [
                            Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                            const Gap(13),
                            Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                Text("2/8 Assignments Completed",style: AppTextStyles.heading14.copyWith(color:ColorSelect.blueColor ),),
                              ],
                            ),
        
                          ],
                        ),
                      ),
        
        
                    ],
                  ),
                ),
              ),
            ),
            const Gap(32),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  Text("Course Tracking",
                      style: AppTextStyles.heading10
                          .copyWith(color: ColorSelect.blackColor)),
                  const Spacer(),
                  Text("See all",
                      style: AppTextStyles.heading10
                          .copyWith(color:  ColorSelect.blueColor)),
                  const Gap(7),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,bottom:16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Padding(
                            padding: const EdgeInsets.only(top:28.5),
                            child: Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                const Gap(16),
                                Row(
                                  children: [
                                    Container(width: 168,
                                      decoration: BoxDecoration(color: ColorSelect.whiteColor,
                                          borderRadius: BorderRadius.circular(27),
                                          boxShadow: [
                                            BoxShadow(color: Color(0xFF000000).withOpacity(0.25),
                                                offset: Offset(-2,1),blurRadius: 2.7,spreadRadius: 0)
                                          ]),
                                      child: LinearPercentIndicator(
                                        width: 168.0,
                                        lineHeight: 11.0,
                                        percent:0.6,
                                        backgroundColor: Colors.white,
                                        progressColor: ColorSelect.darkBlueColor,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text("60%"),
                                  ],
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
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,bottom:16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Padding(
                            padding: const EdgeInsets.only(top:28.5),
                            child: Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                const Gap(16),
                                Row(
                                  children: [
                                    Container(width: 168,
                                      decoration: BoxDecoration(color: ColorSelect.whiteColor,
                                          borderRadius: BorderRadius.circular(27),
                                          boxShadow: [
                                            BoxShadow(color: Color(0xFF000000).withOpacity(0.25),
                                                offset: Offset(-2,1),blurRadius: 2.7,spreadRadius: 0)
                                          ]),
                                      child: LinearPercentIndicator(
                                        width: 168.0,
                                        lineHeight: 11.0,
                                        percent:0.6,
                                        backgroundColor: Colors.white,
                                        progressColor: ColorSelect.darkBlueColor,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text("60%"),
                                  ],
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
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,bottom:16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Padding(
                            padding: const EdgeInsets.only(top:28.5),
                            child: Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                const Gap(16),
                                Row(
                                  children: [
                                    Container(width: 168,
                                      decoration: BoxDecoration(color: ColorSelect.whiteColor,
                                          borderRadius: BorderRadius.circular(27),
                                          boxShadow: [
                                            BoxShadow(color: Color(0xFF000000).withOpacity(0.25),
                                                offset: Offset(-2,1),blurRadius: 2.7,spreadRadius: 0)
                                          ]),
                                      child: LinearPercentIndicator(
                                        width: 168.0,
                                        lineHeight: 11.0,
                                        percent:0.6,
                                        backgroundColor: Colors.white,
                                        progressColor: ColorSelect.darkBlueColor,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text("60%"),
                                  ],
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
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,bottom:16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Padding(
                            padding: const EdgeInsets.only(top:28.5),
                            child: Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                const Gap(16),
                                Row(
                                  children: [
                                    Container(width: 168,
                                      decoration: BoxDecoration(color: ColorSelect.whiteColor,
                                          borderRadius: BorderRadius.circular(27),
                                          boxShadow: [
                                            BoxShadow(color: Color(0xFF000000).withOpacity(0.25),
                                                offset: Offset(-2,1),blurRadius: 2.7,spreadRadius: 0)
                                          ]),
                                      child: LinearPercentIndicator(
                                        width: 168.0,
                                        lineHeight: 11.0,
                                        percent:0.6,
                                        backgroundColor: Colors.white,
                                        progressColor: ColorSelect.darkBlueColor,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text("60%"),
                                  ],
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
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,bottom:16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Padding(
                            padding: const EdgeInsets.only(top:28.5),
                            child: Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                const Gap(16),
                                Row(
                                  children: [
                                    Container(width: 168,
                                      decoration: BoxDecoration(color: ColorSelect.whiteColor,
                                          borderRadius: BorderRadius.circular(27),
                                          boxShadow: [
                                            BoxShadow(color: Color(0xFF000000).withOpacity(0.25),
                                                offset: Offset(-2,1),blurRadius: 2.7,spreadRadius: 0)
                                          ]),
                                      child: LinearPercentIndicator(
                                        width: 168.0,
                                        lineHeight: 11.0,
                                        percent:0.6,
                                        backgroundColor: Colors.white,
                                        progressColor: ColorSelect.darkBlueColor,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text("60%"),
                                  ],
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
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorSelect.primarycolor.withOpacity(0.25), // Shadow color
                        blurRadius: 250, // Softness of the shadow
                        offset: const Offset(0, -1),
                        spreadRadius: -27,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,bottom:16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage(AppImage.images10),width: 42,height: 42,),
                          const Gap(13),
                          Padding(
                            padding: const EdgeInsets.only(top:28.5),
                            child: Column(
                              children: [
                                Text("Data Science in Digital Health",style: AppTextStyles.heading14.copyWith(color: ColorSelect.blackColor)),
                                const Gap(16),
                                Row(
                                  children: [
                                    Container(width: 168,
                                      decoration: BoxDecoration(color: ColorSelect.whiteColor,
                                          borderRadius: BorderRadius.circular(27),
                                          boxShadow: [
                                            BoxShadow(color: Color(0xFF000000).withOpacity(0.25),
                                                offset: Offset(-2,1),blurRadius: 2.7,spreadRadius: 0)
                                          ]),
                                      child: LinearPercentIndicator(
                                        width: 168.0,
                                        lineHeight: 11.0,
                                        percent:0.6,
                                        backgroundColor: Colors.white,
                                        progressColor: ColorSelect.darkBlueColor,
                                      ),
                                    ),
                                    const Gap(20),
                                    Text("60%"),
                                  ],
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
            ),
        
        
        
          ],
        ),
      ),
    );
  }


  }

  Column buildHeaderColumn({
    String? image,
    String? header,
  }) {
    return Column(
      children: [
        Image(
          image: AssetImage(image ?? ""),
          width: 36,
          height: 36,
        ),
        const Gap(4),
        Text(header ?? "",
            style: AppTextStyles.heading12
                .copyWith(color: ColorSelect.whiteColor))
      ],
    );
  }
