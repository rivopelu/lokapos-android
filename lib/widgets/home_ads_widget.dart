import 'package:flutter/cupertino.dart';

class HomeAdsWidget extends StatelessWidget {
  const HomeAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String dummyImageUrl = "https://adespresso.com/wp-content/uploads/2019/10/guide-social-media-image-sizes-2019-1024x536.jpg";

    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Image.network(
          fit: BoxFit.cover,
          dummyImageUrl),
    );
  }
}
