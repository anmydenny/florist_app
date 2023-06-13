import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_config.dart';

class AppImage extends StatelessWidget {
  const AppImage({Key? key, required this.image}) : super(key: key);

  final Widget image;

  AppImage.network(
    String imageUrl, {
    super.key,
    double? width,
    double? height,
    BoxFit? fit,
  }) : image = CachedNetworkImage(
          imageUrl: imageUrl,
          width: width,
          height: height,
          fit: fit,
          placeholder: (context, url) => Center(child: AppImage.placeholder()),
          errorWidget: (context, url, _) =>
              Center(child: AppImage.placeholder()),
        );

  AppImage.svg(
    String asset, {
    super.key,
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) : image = SvgPicture.asset(
          asset,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          color: color,
          placeholderBuilder: (context) => AppImage.placeholder(
            width: width,
            height: height,
          ),
        );

  AppImage.asset(
    String asset, {
    super.key,
    double? width,
    double? height,
    BoxFit? fit,
  }) : image = Image.asset(
          asset,
          width: width,
          height: height,
          fit: fit ?? BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => AppImage.placeholder(),
        );

  AppImage.placeholder({
    super.key,
    double? width,
    double? height,
  }) : image = SvgPicture.asset(
          AppConfig.placeholderImage,
          width: width,
          height: height,
        );

  @override
  Widget build(BuildContext context) {
    return image;
  }
}
