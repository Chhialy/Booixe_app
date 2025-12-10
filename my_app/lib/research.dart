import 'package:flutter/material.dart';

class Research extends StatelessWidget {
  const Research({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text('ស្វែងរក', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                left: 21,
                top: 563,
                child: Container(
                  width: 189,
                  height: 270,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFE0E3E7),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 571,
                child: Container(
                  width: 176,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://placehold.co/176x140"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 236,
                top: 569,
                child: Container(
                  width: 176,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://placehold.co/176x140"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 272,
                child: Container(
                  width: 189,
                  height: 270,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFE0E3E7),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 279,
                child: Container(
                  width: 176,
                  height: 140,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://placehold.co/176x140"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 115,
                child: SizedBox(
                  width: 264,
                  height: 22,
                  child: Text(
                    'ស្វែងរកសៀវភៅដែលអ្នក​ចូលចិត្ត​ជាមួយ​ Booxie',
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.70),
                      fontSize: 14,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                      height: 1.57,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 0,
                child: Container(
                  width: 64,
                  height: 53,
                  padding: const EdgeInsets.only(left: 16, right: 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '9:41',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height: 1.29,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 345,
                top: 12,
                child: Container(
                  width: 84,
                  height: 30.52,
                  padding: const EdgeInsets.only(left: 6, right: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.35,
                        child: Container(
                          width: 25,
                          height: 13,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(4.30),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 21,
                        height: 9,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ... other Positioned children (kept as in the snippet)
            ],
          ),
        ),
      ),
    );
  }
}
