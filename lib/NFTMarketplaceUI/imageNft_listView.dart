import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_marketplace_app/NFTMarketplaceUI/NFT_screen.dart';

class ImageNftListView extends StatefulWidget {
  const ImageNftListView(
      {super.key, required this.startIndex, this.duration = 0});
  final int startIndex;
  final int duration;

  @override
  State<ImageNftListView> createState() => _ImageNftListViewState();
}

class _ImageNftListViewState extends State<ImageNftListView> {
  late ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      //delete if is at the end of list view
      if (scrollController.position.atEdge) {
        _autoScroll();
      }
    });
    //add thsi is make sure that controller been attcted to list view
    WidgetsBinding.instance?.addPersistentFrameCallback((timeStamp) {});
  }

  _autoScroll() {
    final _currentScrollPostion = scrollController.offset;
    final _currentEndPostion = scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      scrollController.animateTo(
          _currentScrollPostion == _currentEndPostion ? 0 : _currentEndPostion,
          duration: Duration(seconds: widget.duration),
          curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildng
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: 135,
        child: ListView.builder(
            controller: scrollController,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _ImageTile(
                image: 'assets/images/${widget.startIndex + index}.png',
              );
            }),
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => NFTScreen(image: image)));
      },
      child: Hero(
          tag: image,
          child: Image.asset(
            image,
            width: 135,
          )),
    );
  }
}
