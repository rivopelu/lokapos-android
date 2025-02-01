import 'package:flutter/cupertino.dart';
import 'package:lokapos/themes/app_size.dart';

class CardBody extends StatelessWidget {
  final Widget child;

  const CardBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSize.paddingXs),
      child: child,
    );
  }
}
