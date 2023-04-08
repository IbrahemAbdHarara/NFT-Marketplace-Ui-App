import 'package:flutter/material.dart';

class NFTScreen extends StatelessWidget {
  final String image;

  const NFTScreen({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010101),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(tag: image, child: Image.asset(image)),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  width: 170,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        ' Digital NFT Art',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Image.asset(
                        'assets/images/layers.png',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ' Monkey #573',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              ' Owned by Gennady',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _InfoTile(
                    title: '17d 3h 20m',
                    subtitle: 'Remaining Time',
                    image: 'assets/images/time.png',
                  ),
                  _InfoTile(
                      title: '19.3 EHT', subtitle: 'Highest Bid', image: 'assets/images/bitcoin.png'),
                ]),
          )
       , Spacer(),
       Container(
        width: double.infinity,
        height: 55,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 21),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
       color: const Color(0xff3000ff)
       ),
       child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
        Text(
                  'place Bid',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              SizedBox(width: 21,),
                 Image.asset(
            'assets/images/cart.png',
          width: 35,
          height: 35,
        ),
         ],
       ) ,
       ),
      const SizedBox(
            height: 50,
          ),
      
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile(
      {super.key,
      required this.title,
      required this.subtitle, required this.image,
      });

  final String title;
  final String subtitle;
   final String image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade300,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(width: 5,),
        Image.asset(
          image,
          width: 30,
          height: 30,
        ),
      ],
    );
  }
}
