import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'app_image.dart';
class AppCarouselSlider extends StatelessWidget {
  const AppCarouselSlider({Key? key,
    required this.image,
    required this.onPressed
  }) : super(key: key);

  final List<String>  image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: image.length,
      options: CarouselOptions(
        enlargeCenterPage: true,
        viewportFraction: 0.7,
        reverse: false,
        aspectRatio: 5/2.5,
      ),
      itemBuilder: (context, i, id) {
        return GestureDetector(
          // onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: AppColors.grey,
                )),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AppImage.network(
                image[i],
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
