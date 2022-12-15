import 'package:flutter/material.dart';

class ItemData {
  String imgUrl;
  String title;
  String location;
  int price;

  ItemData({
    required this.imgUrl,
    required this.title,
    required this.location,
    required this.price,
  });
}

var dataList = [
  ItemData(
    imgUrl: 'assets/i1.jpg',
    title: "아이폰 14pro",
    location: "서울 송파구 방이동",
    price: 100000,
  ),
  ItemData(
    imgUrl: 'assets/i2.jpg',
    title: "아이폰 12 팝니다",
    location: "경기도 김포시 운양동",
    price: 60000,
  ),
  ItemData(
    imgUrl: 'assets/i3.jpg',
    title: "참기름 드림해요",
    location: "울산 중구 유곡동",
    price: 0,
  ),
  ItemData(
    imgUrl: 'assets/i4.jpg',
    title: "방금 받은 치킨 기프티콘 급처",
    location: "경남 김해시 장유1동",
    price: 5500,
  ),
  ItemData(
    imgUrl: 'assets/i5.jpg',
    title: "삼성벽걸이 에어컨",
    location: "대구 중구 남산4동",
    price: 70000,
  ),
  ItemData(
    imgUrl: 'assets/i6.jpg',
    title: "벤츠 골프백",
    location: "부산 남구 대연제3동",
    price: 30000,
  ),
  ItemData(
    imgUrl: 'assets/i7.jpg',
    title: "4단 앵글선반",
    location: " 강원도 강릉시 교1동",
    price: 20000,
  ),
  ItemData(
    imgUrl: 'assets/i8.jpg',
    title: "해바라기버너/캠핑버너",
    location: "광주 광산구 신가동",
    price: 20000,
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Title(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            for (int i = 0; i < dataList.length; i++)
              Item(
                itemData: dataList[i],
              ),
          ]),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  ItemData itemData;
  Item({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            itemData.imgUrl,
            width: 150,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  itemData.location,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 96, 96, 96),
                  ),
                ),
                Text(
                  '${itemData.price}원',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.favorite_border),
                    Text('4'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Row(
        children: const [
          Text(
            "금호가 3가",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
