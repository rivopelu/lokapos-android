import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SpecialForTodayCarouseList extends StatelessWidget {
  const SpecialForTodayCarouseList({super.key});

  @override
  Widget build(BuildContext context) {
    String dummyImageUrl =
        "https://adespresso.com/wp-content/uploads/2019/10/guide-social-media-image-sizes-2019-1024x536.jpg";

    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.4,
        height: 130,
        enableInfiniteScroll: false,
        padEnds: false,
      ),
      items: List.generate(5, (index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade100,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    dummyImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(color: Colors.grey.shade300, height: 1),
                Padding(
                  padding:
                  EdgeInsets.only(left: 4, top: 8, bottom: 8, right: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Rp. 100.000",
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
