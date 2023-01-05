import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AimsLab(),
  ));
}

class AimsLab extends StatelessWidget {
  const AimsLab({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //Using LayoutBuilder to make it responsive
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  //Card 1
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: screenWidth,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        color: Color(0xFFD18585),
                        elevation: 5.0,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      width: double.infinity ,
                                      height: 25,
                                      color: Color(0xFFC4C4C4),
                                    ),
                                  ),

                                  Expanded(child: SizedBox(),flex: 2)
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: const EdgeInsets.only(left: 10,right: 50,bottom: 6),
                                width: double.infinity,
                                height: 30,
                                color: Color(0xFFA8D8AD),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Card 2
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 18),
                    child: SizedBox(
                      width: screenWidth,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        color: Color(0xFFD18585),
                        elevation: 5.0,
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height:40,
                             transform: Matrix4.translationValues(9, -16.0, 8),
                              color: Color(0xFFC4C4C4),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                               margin: const EdgeInsets.only(left: 10,right: 9,bottom: 6,top: 18),
                                width: screenWidth,
                                height: 30,
                                color: Color(0xFFA8D8AD),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
