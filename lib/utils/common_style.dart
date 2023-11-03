import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const backgroundColr = Colors.amber;
  static const circlrAvtarBackgroundColor = Color.fromARGB(255, 255, 213, 79);
  // static const backgroundColr = Colors.white;
  static const yellowColr = Color.fromARGB(255, 212, 112, 255);
}

const appBarColor = Colors.amber;

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

SizedBox heightSizedBox(height) {
  return SizedBox(
    height: height,
  );
}

SizedBox widthSizedBox(width) {
  return SizedBox(
    width: width,
  );
}

Container verticalDivider(double height) {
  return Container(height: height, width: 1, color: Colors.black26);
}

Container horizontalDivider(width) {
  return Container(height: 1, width: width, color: Colors.black26);
}

const textStyle1 = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
const textStyle2 = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500);

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    BuildContext context, String message,
    {Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color ?? Colors.green,
      content: Text(message),
    ),
  );
}

// ! Button For Everything Screen

class Btn extends StatelessWidget {
  final String btnName;
  final Function() onPressed;
  final TextStyle? style;
  final double? width, height, fontSize;
  final Color? color, txtColor, btnColor;
  final EdgeInsets? padding, margin;
  // final Alignment? alignment;
  // final Decoration? decoration;
  // final TextDecoration? txtDecoration;

  const Btn(this.btnName,
      {Key? key,
      // this.alignmen
      this.color,
      // this.decoration,
      this.txtColor,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.style,
      required this.onPressed,
      // this.txtDecoration,
      this.fontSize,
      this.btnColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 45,
      child: CupertinoButton(
        onPressed: onPressed,
        padding: padding,
        color: btnColor,
        borderRadius: BorderRadius.circular(21),
        child: Center(
          child: Text(
            btnName,
            textAlign: TextAlign.center,
            style: style ??
                TextStyle(
                    color: txtColor ?? Colors.white,
                    fontSize: fontSize ?? 15,
                    // decoration: txtDecoration,
                    fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class Btn1 extends StatelessWidget {
  final String btnName;
  final Function()? onTap;
  final TextStyle? style;
  final double? width, height, fontSize;
  final Color? color, txtColor;
  final EdgeInsets? padding, margin;
  final Alignment? alignment;
  final Decoration? decoration;
  final TextDecoration? txtDecoration;

  const Btn1(this.btnName,
      {Key? key,
      this.alignment,
      this.color,
      this.decoration,
      this.txtColor,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.style,
      this.onTap,
      this.txtDecoration,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        padding: padding,
        margin: margin,
        decoration: decoration ??
            BoxDecoration(
                // shape: BoxShape.rectangle,
                color: color ?? AppColor.backgroundColr,
                borderRadius: BorderRadius.circular(21)),
        width: width,
        height: height ?? 45,
        child: Center(
          child: Text(
            btnName,
            style: style ??
                TextStyle(
                    color: txtColor ?? Colors.white,
                    fontSize: fontSize ?? 15,
                    decoration: txtDecoration,
                    fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// // // previousBtn
class PreviousBtn extends StatelessWidget {
  final Function()? onpressed;
  const PreviousBtn({super.key, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Btn("Back",
            txtColor: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
            btnColor: Colors.red,
            onPressed: onpressed!),
      ),
    );
  }
}

// // OrderItemCardDec
final itemCardDecoration =
    BoxDecoration(border: Border.all(width: 1, color: Colors.white));

///////////////////////////////////////////////////////////////////////////////////

class ChatBtn extends StatelessWidget {
  final String btnName;
  final Color? borderColor,
      backgroundColor,
      foregroundColor,
      shadowColor,
      textColor;
  final Function() onpressed;
  final double? btnWidth, btnHeight, fontSize, elevation;
  // final ButtonStyle? buttonStyle;

  const ChatBtn(
      {super.key,
      this.borderColor,
      this.backgroundColor,
      this.foregroundColor,
      this.shadowColor,
      required this.btnName,
      required this.onpressed,
      this.textColor,
      this.btnWidth,
      this.btnHeight,
      this.fontSize,
      this.elevation
      // this.buttonStyle,
      });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onpressed,
      style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          foregroundColor: foregroundColor,
          shadowColor: shadowColor,
          elevation: elevation ?? 2,
          fixedSize: Size(btnWidth ?? 93, btnHeight ?? 40),
          shape: const StadiumBorder(),
          side: BorderSide(width: 1, color: borderColor ?? Colors.green)),
      child: Text(
        btnName,
        style: TextStyle(color: textColor ?? Colors.green, fontSize: fontSize),
      ),
    );
  }
}

class HorizontalRichTxt extends StatelessWidget {
  final String text1, text2;
  final double? fontSize1, fontSize2;
  final Color? color1, color2;

  const HorizontalRichTxt({
    super.key,
    required this.text1,
    required this.text2,
    this.fontSize1,
    this.fontSize2,
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text1,
                style: TextStyle(
                    color: color1 ?? Colors.red,
                    fontSize: fontSize1 ?? 15.0,
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: text2,
                style: TextStyle(
                    color: color2 ?? Colors.black45,
                    fontSize: fontSize2 ?? 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
