import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List images = [
    'assets/image/a.jpeg',
    'assets/image/a.jpeg',
    'assets/image/a.jpeg',
    'assets/image/a.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index]),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      margin: const EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black.withAlpha((0.5 * 255).toInt()),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "data",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.bookmark, color: Colors.white),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Adfdfadsfadsfadsfasdfdsafsadfafddsafasdf",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "adsfadsfsd",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "adsfdsaf",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
