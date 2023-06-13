import 'package:flutter/material.dart';

class AppFontFamily {
  AppFontFamily._();

  static const primary = 'Cabin';

  static const secondary = 'Savior1';
}

class AppTextThemes {
  AppTextThemes._();

  static final primary = const TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    // bodyColor: AppColors.textPrimary,
    // displayColor: AppColors.textPrimary,
    fontFamily: AppFontFamily.primary,
  );
}

class AppTextStyles {
  AppTextStyles._();

  // static const appBarTitle = TextStyle(
  //   color: AppColors.secondary,
  //   fontSize: AppFontSizes.xxLarge,
  //   fontWeight: FontWeight.w500,
  // );

  static const button = TextStyle(
    color: AppColors.white,
    fontSize: AppFontSizes.medium,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );

  static const buttonText = TextStyle(
    color: AppColors.white,
    fontSize: AppFontSizes.xLarge,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );

  static const buttonDisabled = TextStyle(
    color: AppColors.grey,
    fontSize: AppFontSizes.xxxLarge,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );

  static const tfPlaceHolder = TextStyle(
    color: AppColors.btnYellow,
    fontSize: AppFontSizes.large,
    fontWeight: FontWeight.w600,
    fontFamily: AppFontFamily.primary,
  );

  static const tfInput = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.large,
    fontFamily: AppFontFamily.primary,
  );

  static const inputError = TextStyle(
    color: AppColors.red,
    fontSize: AppFontSizes.small,
    fontFamily: AppFontFamily.primary,
  );

  static const bottomNavigationLabel = h8;

  static const h0 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: AppFontSizes.xxxxXLarge,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );

  static const h1 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.xxLarge,
    fontWeight: FontWeight.bold,
    fontFamily: AppFontFamily.secondary,
  );

  static const h2 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.labelLarge,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );

  static const h5 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.xLarge,
    fontFamily: AppFontFamily.primary,
    fontWeight: FontWeight.w700,
  );

  static const h6 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.xxLarge,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.primary,
  );

  static const h7 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.xLarge,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.primary,
  );

  static const h8 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.small,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.primary,
  );

  static const h9 = TextStyle(
    color: AppColors.grey,
    fontSize: AppFontSizes.medium,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.primary,
  );

  static const h10 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.xxxxXLarge,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );
  static const h11 = TextStyle(
    color: AppColors.inputFill,
    fontSize: AppFontSizes.xxxxXLarge,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.secondary,
  );

  static const h12 = TextStyle(
    color: AppColors.inputFill,
    fontSize: AppFontSizes.medium,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.primary,
  );

  static const p1 = TextStyle(
    color: AppColors.btnYellow,
    fontSize: AppFontSizes.large,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.primary,
  );

  static const p2 = TextStyle(
    color: AppColors.black,
    fontSize: AppFontSizes.large,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.primary,
  );

  static const p3 = TextStyle(
    color: AppColors.grey,
    fontSize: AppFontSizes.large,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.primary,
  );

  static const p4 = TextStyle(
      color: AppColors.btnYellow,
      fontSize: AppFontSizes.large,
      fontFamily: AppFontFamily.primary,
      fontWeight: FontWeight.w400);

  static const p5 = TextStyle(
      color: AppColors.black,
      fontSize: AppFontSizes.small,
      fontFamily: AppFontFamily.primary,
      fontWeight: FontWeight.w500);

  static const successText = TextStyle(
    color: AppColors.white,
    fontSize: AppFontSizes.xxxXLarge,
    fontFamily: AppFontFamily.secondary,
    fontWeight: FontWeight.w500,
  );
}

class AppColors {
  AppColors._();
  static const white = Colors.white;
  static const black = Colors.black;
  static const red = Colors.red;
  static const btnYellow = Color.fromRGBO(205,176,66, 1);
  static const cardAllSales = Color.fromRGBO(231,202,98, 1);
  static const grey = Color.fromRGBO(144,144,144, 1);
  static const darkGrey = Color(0xFF222222);
  static const inputFill = Color(0xFF0A0A0C);
  static const  greyShade= Color.fromRGBO(247,247,245, 1);
  static const  bottomBarGreyShade = Color.fromRGBO(93,93,97, 1);
  static const  lightGreyShade = Color.fromRGBO(240,240,240, 1);

}

class AppFontSizes {
  AppFontSizes._();

  static const xxSmall = 8.0;

  static const xSmall = 10.0;

  static const small = 12.0;

  static const medium = 14.0;

  static const large = 16.0;

  static const xLarge = 18.0;

  static const xxLarge = 20.0;

  static const xxxLarge = 28.0;

  static const xxxXLarge = 40.0;

  static const xxxxXLarge = 60.0;

  static const labelMedium = 22.0;

  static const labelLarge = 32.0;
}

class AppPaddings {
  AppPaddings._();

}
//padding , font size, app colors