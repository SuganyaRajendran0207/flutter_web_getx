import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/domain/controller/home/home_controller.dart';
import 'package:flutter_web/presentation/theme/app_asset.dart';
import 'package:flutter_web/presentation/theme/colors.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  expandedHeight: 150,
                  collapsedHeight: 150,
                  elevation: 0,
                  centerTitle: false,
                  backgroundColor: Colors.white,
                  title: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Text('657282783562'),
                        Icon(Icons.call)
                      ],
                    ),
                  ),
                  iconTheme:
                      IconTheme.of(context).copyWith(color: Colors.black26),
                  actions: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16),
                      child: const Image(
                        image: AssetImage(AppAsset.ocsLogo),
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    child: _BottomView(),
                    preferredSize: Size(Get.width, 56),
                  ),
                )),
          ];
        },
        body: const _HomeView(),
      ),
    );
  }
}

class _HomeView extends GetView<HomeController> {
  const _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 500,
            color: backgroundGrey,
            child: CarouselSlider(
              options: CarouselOptions(
                  disableCenter: true,
                  enlargeCenterPage: true,
                  height: 500,
                  pageSnapping: false,
                  enableInfiniteScroll: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.90,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    controller.updateCurrentIndex(index);
                  },
                  autoPlay: true),
              items: controller.slider
                  .map((swipe) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image(
                          image: swipe,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TabBarView(
              controller: controller.controller,
              children: controller.tabViews,
            ),
          ),
        )
      ],
    );
  }
}

class _BottomView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: controller.myTabs,
      controller: controller.controller,
      isScrollable: true,
      labelStyle: const TextStyle(fontSize: 18, color: Colors.black),
      labelColor: Colors.black,
    );
  }
}
