import 'package:flutter/material.dart';
import 'package:photo_gallery_assignment/screens/AnimalsSingle.dart';
import 'package:photo_gallery_assignment/screens/AstheticSingle.dart';
import 'package:photo_gallery_assignment/screens/MoodSingle_Views.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const PhotoGallery());
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2CAB00),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
            onPressed: () {


            },
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
      ),
      body: OrientationLayoutBuilder(
        portrait: (context) => GridView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MoodsingleViews(),));
                  },
                  child: Container(
                    width: 180,
                    height: 180,

                    alignment: AlignmentDirectional.bottomStart,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/mood.png'),
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
                    child: const Text(
                      'Mood',

                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AstheticSingle(),));
                  },
                  child: Container(
                    width: 180,
                    height: 180,
                    alignment: AlignmentDirectional.bottomStart,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/asthetic.png'),
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
                    child: const Text(
                      'Asthetic',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalsSingle(),));
                  },
                  child: Container(
                    width: 180,
                    height: 180,
                    alignment: AlignmentDirectional.bottomStart,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/animals.png'),
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
                    child: const Text(
                      'Animals',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/city.png'),
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
                  child: const Text(
                    'City',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/travel.png'),
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
                  child: const Text(
                    'Travel',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/sky.png'),
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
                  child: const Text(
                    'Sky',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/road.png'),
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
                  child: const Text(
                    'Road',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/flowers.png'),
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
                  child: const Text(
                    'Flowers',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
        landscape: (context) =>GridView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 20, crossAxisSpacing: 20),
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MoodsingleViews(),));
                  },
                  child: Container(
                    width: 180,
                    height: 180,

                    alignment: AlignmentDirectional.bottomStart,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/mood.png'),
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
                    child: const Text(
                      'Mood',

                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AstheticSingle(),));
                  },
                  child: Container(
                    width: 180,
                    height: 180,
                    alignment: AlignmentDirectional.bottomStart,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/asthetic.png'),
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
                    child: const Text(
                      'Asthetic',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalsSingle(),));
                  },
                  child: Container(
                    width: 180,
                    height: 180,
                    alignment: AlignmentDirectional.bottomStart,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/animals.png'),
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
                    child: const Text(
                      'Animals',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/city.png'),
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
                  child: const Text(
                    'City',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/travel.png'),
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
                  child: const Text(
                    'Travel',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/sky.png'),
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
                  child: const Text(
                    'Sky',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/road.png'),
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
                  child: const Text(
                    'Road',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  alignment: AlignmentDirectional.bottomStart,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/flowers.png'),
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
                  child: const Text(
                    'Flowers',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


