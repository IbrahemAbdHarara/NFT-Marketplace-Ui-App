import 'package:flutter/material.dart';
import 'package:nft_marketplace_app/NFTMarketplaceUI/imageNft_listView.dart';
import 'package:nft_marketplace_app/NFTMarketplaceUI/navigator_route.dart';
import 'package:nft_marketplace_app/NFTMarketplaceUI/test.dart';

class HomeNftScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //  extendBodyBehindAppBar: true,

      backgroundColor: Color(0xff010101),
      body: Container(
        child: Stack(children: [
          Positioned.fill(
            child: ShaderMask(
              blendMode: BlendMode.dstOut,
              shaderCallback: (rect){
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                
              Colors.transparent,
             Colors.transparent,
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.9),
              Colors.black,
      
                ],
                stops:const [0,0.62,0.67,0.85,1]
                
                ).createShader(rect);
              },
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    ImageNftListView(
                      startIndex: 1,
                      duration: 25,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageNftListView(
                      startIndex: 11,
                      duration: 45,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageNftListView(
                      startIndex: 21,
                      duration: 65,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageNftListView(
                      startIndex: 31,
                      duration: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 50,
              left: 24,
              right: 24,
              child: Container(
                height: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      
          crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Art With NFTs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 21,
                          ),
                        ),
                           Image.asset('assets/images/layers.png',width: 40,height: 40,
                           )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
         const Text(
                      'Check out this raffle for you guys only! new coin minted show some love.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        height: 1.2,
                        fontSize: 16,
                      ),
                    ),
            Spacer(),
            InkWell(
              onTap: (){
                AppRoute.navigationWidget(SplashNFT_Screen_TEST());
              },
              child: Container(width: 160,
              height: 55,
              
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),color: Color(0xff3000ff)),
              child:const      Text(
                        'Discover',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
               
              ),
            )
      
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
