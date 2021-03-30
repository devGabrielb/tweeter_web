import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/widgets/custom-buttom-post-widget.dart';

class PostWidget extends StatelessWidget {
  final Size size;

  const PostWidget({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 606),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 35),
        padding: EdgeInsets.all(20),
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 36.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/200"))),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text("28 August at 20:43",
                          style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              child: Text(
                "Traveling – it leaves you speechless, then turns you into a storyteller.",
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: 705, minWidth: 300, minHeight: 300, maxHeight: 705),
              child: LayoutBuilder(builder: (context, imageConstraints) {
                return Container(
                  width: imageConstraints.maxWidth,
                  height: imageConstraints.maxWidth,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://picsum.photos/id/237/700/400",
                              ))),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtomPostWidget(
                  width: size.width * 0.05,
                  type: Typebuttom.Comment,
                ),
                CustomButtomPostWidget(
                  width: size.width * 0.05,
                  type: Typebuttom.Retweet,
                ),
                CustomButtomPostWidget(
                  width: size.width * 0.05,
                  type: Typebuttom.Like,
                ),
                CustomButtomPostWidget(
                  width: size.width * 0.05,
                  type: Typebuttom.Save,
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                Container(
                  width: 32,
                  height: 36.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(
                        "https://picsum.photos/200",
                      ))),
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 20),
                    child: Container(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: "Tweet your reply",
                            hintStyle: GoogleFonts.notoSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.grey),
                            fillColor: Colors.grey[50],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
