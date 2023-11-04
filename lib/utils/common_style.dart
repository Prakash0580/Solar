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

// class Btn extends StatelessWidget {
//   final String btnName;
//   final Function() onPressed;
//   final TextStyle? style;
//   final double? width, height, fontSize;
//   final Color? color, txtColor, btnColor;
//   final EdgeInsets? padding, margin;
//   // final Alignment? alignment;
//   // final Decoration? decoration;
//   // final TextDecoration? txtDecoration;

//   const Btn(this.btnName,
//       {Key? key,
//       // this.alignmen
//       this.color,
//       // this.decoration,
//       this.txtColor,
//       this.width,
//       this.height,
//       this.padding,
//       this.margin,
//       this.style,
//       required this.onPressed,
//       // this.txtDecoration,
//       this.fontSize,
//       this.btnColor})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height ?? 45,
//       child: CupertinoButton(
//         onPressed: onPressed,
//         padding: padding,
//         color: btnColor,
//         borderRadius: BorderRadius.circular(21),
//         child: Center(
//           child: Text(
//             btnName,
//             textAlign: TextAlign.center,
//             style: style ??
//                 TextStyle(
//                     color: txtColor ?? Colors.white,
//                     fontSize: fontSize ?? 15,
//                     // decoration: txtDecoration,
//                     fontWeight: FontWeight.w500),
//           ),
//         ),
//       ),
//     );
//   }
// }

//
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

class TxtField extends StatelessWidget {
  final double? height, width;
  final String? hintText;
  final int? maxLines, maxLength;
  const TxtField(
      {super.key,
      this.hintText,
      this.maxLines,
      this.maxLength,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width ?? 400,
        height: height ?? 60,
        child: TextField(
          maxLines: maxLines,
          cursorColor: Colors.black38,
          style: const TextStyle(
            fontSize: 20,
          ),
          cursorWidth: 0.5,
          cursorHeight: 20,
          decoration: InputDecoration(
              // hoverColor: Colors.green.shade100,
              fillColor: const Color(0xFFfaf7f7),
              filled: true,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 0.5),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black45, width: 0.1),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w600)),
        ));
  }
}
