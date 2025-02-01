import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_size.dart';
import 'package:lokapos/widgets/card_body.dart';
import 'package:lokapos/widgets/main_card.dart';

class FirstMenuCard extends StatelessWidget {
  const FirstMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    String dummyImageUrl =
        "https://adespresso.com/wp-content/uploads/2019/10/guide-social-media-image-sizes-2019-1024x536.jpg";

    return MainCard(
        onTab: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Alert"),
                content: Text("This is an alert message."),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        border: false,
        width: 120,
        child: Column(
          children: [
            Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSize.borderRadius),
                    topRight: Radius.circular(AppSize.borderRadius),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(dummyImageUrl), fit: BoxFit.cover)),
            ),
            CardBody(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Panci data yang enak sekalianan",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Rp. 20.000",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ))
          ],
        ));
  }
}
