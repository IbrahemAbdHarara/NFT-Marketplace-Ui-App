

import 'package:flutter/material.dart';
import 'package:nft_marketplace_app/NFTMarketplaceUI/homeNft_screen.dart';
import 'package:nft_marketplace_app/NFTMarketplaceUI/navigator_route.dart';

class SplashNFT_Screen_TEST extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
       

    return Scaffold(
      
      backgroundColor:Color(0xff3000ff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(
            'assets/images/layers.png',
          width: 150,
          height: 150,
        ),)
          ],
        ),
      ),
    );
  }
}
