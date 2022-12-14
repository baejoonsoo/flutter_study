import 'package:flutter/material.dart';

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
            title: Container(
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
            ),
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
          body: Container(
            height: 150,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/camera.png",
                  width: 150,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        "카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "금호동 3가",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96),
                        ),
                      ),
                      const Text(
                        "210,000원",
                        style: TextStyle(
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
          )),
    );
  }
}
