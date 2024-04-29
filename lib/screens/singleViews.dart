import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class singleViews extends StatelessWidget {
    singleViews({super.key, required this.itemLists, required this.index});
    final List<Map<String, dynamic>> itemLists;
    final int index;



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
          title: Text(
            '${itemLists[index]['itemName']}',
            style: const TextStyle(
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
          portrait: (context) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 300,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image:  DecorationImage(
                            image: AssetImage('${itemLists[index]['imageLink']}'),
                            fit: BoxFit.cover
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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                         '${itemLists[index]['itemName']} With Nature',

                          style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 25,
                              shadowColor: Colors.black.withOpacity(.40),
                              backgroundColor: const Color(0xff2CAB00),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 135.0, vertical: 15.0),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'See More',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                              ),
                            )),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Suggestion",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Color(0xff7ACA5E)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            alignment: AlignmentDirectional.bottomStart,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
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
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            alignment: AlignmentDirectional.bottomStart,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
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
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          landscape: (context) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        image:  DecorationImage(
                          
                          image: AssetImage('${itemLists[index]['imageLink']}'),
                          fit: BoxFit.cover
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
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                       Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              '${itemLists[index]['itemName']} With Nature',
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 25,
                                  shadowColor: Colors.black.withOpacity(.40),
                                  backgroundColor: const Color(0xff2CAB00),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 137.0, vertical: 15.0),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'See More',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Suggestion",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Color(0xff2CAB00)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                alignment: AlignmentDirectional.bottomStart,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/asthetic.png'),
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
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                alignment: AlignmentDirectional.bottomStart,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/animals.png'),
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
                            ],
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
