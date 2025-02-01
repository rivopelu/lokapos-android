import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/screen/order/detail_order.dart';
import 'package:lokapos/services/navigation_service.dart';

class OrderScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  const OrderScreen({super.key, required this.updateAppBar});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateAppBar(
        AppBar(
          title: Text("ORDER"),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                locator<NavigationService>().pushWidget(DetailOrder());
              },
            ),
          ],
        ),
      );
    });

    return Center(child: Text("ORDER"));
  }
}