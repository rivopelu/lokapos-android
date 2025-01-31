import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lokapos/widgets/home_ads_widget.dart';
import 'package:lokapos/widgets/home_category_list.dart';
import 'package:lokapos/widgets/home_main_info_card.dart';
import 'package:lokapos/widgets/screen_container.dart';

class HomeScreen extends StatefulWidget {
  final Function(PreferredSizeWidget) updateAppBar;
  final Function(bool) showAppBar;

  const HomeScreen(
      {super.key, required this.updateAppBar, required this.showAppBar});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();
  int itemCount = 40;
  bool activeScroll = false;

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    if (kDebugMode) {
      print('Data refreshed!');
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels > 5) {
      widget.showAppBar(true);
    } else {
      widget.showAppBar(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.updateAppBar(
        AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      );
    });

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomeAdsWidget(),
                Container(
                  transform: Matrix4.translationValues(0, -50, 0),
                  child: ScreenContainer(
                      child: Column(
                    spacing: 24,
                    children: [
                      HomeMainInfoCard(),
                      HomeCategoryList(),
                      Text("HELLO WORLD"),
                      GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1,
                        ),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.blueAccent,
                            alignment: Alignment.center,
                            child: Text(
                              "Item $index",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          );
                        },
                      ),
                    ],
                  )),
                )
              ],
            ),
          )),
    );
  }
}