import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key,
    required this.text,
    this.onPressed,
    this.enabled = true,
    this.height = 45,
    this.width = double.infinity,
    this.textStyle = AppTextStyles.buttonText
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final bool enabled;
  final double height;
  final double width;
  final TextStyle textStyle;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height ,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.btnBgColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                    side: const BorderSide(color: AppColors.btnBgColor)
                )
            )
        ),
        child: Text(widget.text,style: widget.textStyle),),
    );
  }
}
