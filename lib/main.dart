import 'package:flutter/material.dart';
import 'package:photo_gallery_assignment/screens/singleViews.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const PhotoGallery());
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> itemLists = [
      {
        'itemName': 'Mood',
        'imageLink': 'assets/images/mood.png',
      },
      {
        'itemName': 'Asthetic',
        'imageLink': 'assets/images/asthetic.png',
      },
      {
        'itemName': 'Animals',
        'imageLink': 'assets/images/animals.png',
      },
      {
        'itemName': 'City',
        'imageLink': 'assets/images/city.png',
      },
      {
        'itemName': 'Travel',
        'imageLink': 'assets/images/travel.png',
      },
      {
        'itemName': 'Sky',
        'imageLink': 'assets/images/sky.png',
      },
      {
        'itemName': 'Road',
        'imageLink': 'assets/images/road.png',
      },
      {
        'itemName': 'Flowers',
        'imageLink': 'assets/images/flowers.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2CAB00),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_sharp),
          style: IconButton.styleFrom(
              backgroundColor: const Color(0xff7ACA5E),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
        title: const Text(
          'Photo Gallery',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
      ),
      body: OrientationLayoutBuilder(
          portrait: (context) => GridView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemCount: itemLists.length,
                itemBuilder: (context, index) {
                  final itemsData = itemLists[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => singleViews(
                                    itemLists: itemLists,
                                    index: index,
                                  )));
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      alignment: AlignmentDirectional.bottomStart,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('${itemsData['imageLink']}'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.5),
                            offset: const Offset(
                              0.0,
                              15.0,
                            ), //Offset
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Text(
                        '${itemsData['itemName']}',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
          landscape: (context) => GridView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemCount: itemLists.length,
                itemBuilder: (context, index) {
                  final itemsData = itemLists[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => singleViews(
                                    index: index,
                                    itemLists: itemLists,
                                  )));
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      alignment: AlignmentDirectional.bottomStart,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage('${itemsData['imageLink']}'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.5),
                            offset: const Offset(
                              0.0,
                              15.0,
                            ), //Offset
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Text(
                        '${itemsData['itemName']}',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              )),
    );
  }
}
