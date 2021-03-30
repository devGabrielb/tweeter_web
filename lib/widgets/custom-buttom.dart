import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final Icon icon;
  final double width;
  final double height;
  final Function onTap;
  final Text textWidget;
  final Color color;
  final double radius;
  const CustomButtom({
    Key key,
    this.width,
    this.height,
    this.onTap,
    this.textWidget,
    this.color = Colors.blue,
    this.radius = 0,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(this.radius),
      child: InkWell(
        onTap: () {
          this.onTap();
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(this.radius),
                color: this.color),
            width: this.width,
            height: this.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                this.icon != null ? Container(child: icon) : SizedBox(),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Center(
                    child: textWidget,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
