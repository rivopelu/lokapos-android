import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_size.dart';

class SpecialForTodayCarouseList extends StatelessWidget {
  const SpecialForTodayCarouseList({super.key});

  @override
  Widget build(BuildContext context) {
    String dummyImageUrl =
        "https://adespresso.com/wp-content/uploads/2019/10/guide-social-media-image-sizes-2019-1024x536.jpg";

    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.42,
        enableInfiniteScroll: true,
        padEnds: false,

      ),
      items: List.generate(5, (index) {
        return Container(
          width: 156, // ✅ Pastikan ukuran tidak berubah
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(AppSize.borderRadius),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // ✅ Mencegah Column membesar tanpa batas
            children: [
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSize.borderRadius),
                      topRight: Radius.circular(AppSize.borderRadius),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(dummyImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // ✅ Pusatkan teks,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4), // ✅ Tambahkan sedikit jarak
                      Text(
                        "Rp. 100.000",
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
              ),
            ],
          ),
        );
      }),
    );
  }
}