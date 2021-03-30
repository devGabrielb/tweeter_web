import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/utils/responsive.utils.dart';
import 'package:twitter_clone/widgets/custom-buttom.dart';
import 'package:twitter_clone/widgets/post-widget.dart';
import 'package:twitter_clone/widgets/tweeter-box-input-widget.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LinkedScrollControllerGroup _controllers;
  ScrollController _scrollbody;
  ScrollController _scrollaside;

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();

    _scrollbody = _controllers.addAndGet();
    _scrollaside = _controllers.addAndGet();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    return Scrollbar(
      controller: _scrollbody,
      child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(top: 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 745),
                child: SingleChildScrollView(
                    controller: _scrollbody,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TweeterBoxInputWidget(
                            size: Size(size.width, size.height),
                          ),
                          PostWidget(
                            size: Size(size.width, size.height),
                          ),
                          PostWidget(
                            size: Size(size.width, size.height),
                          ),
                          PostWidget(
                            size: Size(size.width, size.height),
                          ),
                          PostWidget(
                            size: Size(size.width, size.height),
                          ),
                          PostWidget(
                            size: Size(size.width, size.height),
                          ),
                          PostWidget(
                            size: Size(size.width, size.height),
                          ),
                        ],
                      ),
                    )),
              ),
              ResponsiveUtils.isLargeScreen(context)
                  ? SingleChildScrollView(
                      controller: _scrollaside,
                      child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 306),
                          child: Container(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.01,
                                      vertical: 5),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Text("Trends for you",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                color: Colors.grey)),
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#programming",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "213k Tweets",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#devchallenges",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "123k Tweets",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#frontend",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "34k Tweets",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#flutter",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "11k Tweets",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#100DaysOfCode",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "5k Tweets",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#learntocode",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "1k Tweets",
                                              style: GoogleFonts.notoSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 22),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: 5),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Text("Who to follow",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                    color: Colors.grey)),
                                          ),
                                          Divider(
                                            height: 1,
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 32,
                                                    height: 36.5,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                "https://picsum.photos/id/27/200"))),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Mikael Stanley",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .black),
                                                      ),
                                                      Text("230k followers",
                                                          style: GoogleFonts
                                                              .notoSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .grey))
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  CustomButtom(
                                                    radius: 8,
                                                    width: 79,
                                                    height: 24,
                                                    icon: Icon(
                                                      Icons.group_add_outlined,
                                                      color: Colors.white,
                                                      size: 12,
                                                    ),
                                                    textWidget: Text("Follow",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .white)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                child: Text(
                                                    "Photographer & Filmmaker based in Copenhagen, Denmark",
                                                    style: GoogleFonts.notoSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                        color: Colors.grey)),
                                              ),
                                              SizedBox(
                                                height: 35,
                                              ),
                                              Container(
                                                child: Container(
                                                  height: 78,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      image: DecorationImage(
                                                          fit: BoxFit.fitWidth,
                                                          image: NetworkImage(
                                                              "https://picsum.photos/id/123/400"))),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 22,
                                              ),
                                              Divider(),
                                              SizedBox(
                                                height: 28,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: 32,
                                                        height: 36.5,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    "https://picsum.photos/id/80/200"))),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Austin Neill",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                          Text("120k followers",
                                                              style: GoogleFonts.notoSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .grey))
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 3,
                                                      ),
                                                      CustomButtom(
                                                        radius: 8,
                                                        width: 79,
                                                        height: 24,
                                                        icon: Icon(
                                                          Icons
                                                              .group_add_outlined,
                                                          color: Colors.white,
                                                          size: 12,
                                                        ),
                                                        textWidget: Text(
                                                            "Follow",
                                                            style: GoogleFonts.notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .white)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                        "Follow me on IG: @arstyy",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .grey)),
                                                  ),
                                                  SizedBox(
                                                    height: 35,
                                                  ),
                                                  Container(
                                                    child: Container(
                                                      height: 78,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          image: DecorationImage(
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              image: NetworkImage(
                                                                  "https://picsum.photos/id/55/400"))),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 22,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ]))
                              ],
                            ),
                          )),
                    )
                  : Container()
            ],
          )),
    );
  }
}
