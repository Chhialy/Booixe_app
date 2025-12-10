import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 440,
          height: 1139,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 229,
                top: 549,
                child: Container(
                  width: 186,
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
                left: 15,
                top: 549,
                child: Container(
                  width: 191,
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
                left: 22,
                top: 554,
                child: Container(
                  width: 179,
                  height: 154,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://placehold.co/179x154"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -2,
                top: 51,
                child: Container(
                  width: 446,
                  height: 70,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 2,
                        color: Color(0x6BBEBEBE),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 73,
                top: 89,
                child: SizedBox(
                  width: 102,
                  child: Text(
                    'សៀវភៅប្រើរួច',
                    style: TextStyle(
                      color: const Color(0xFF6F6F6F),
                      fontSize: 10,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 73,
                top: 68,
                child: SizedBox(
                  width: 50,
                  child: Text(
                    'Booxie',
                    style: TextStyle(
                      color: const Color(0xFF00A63E),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 141,
                child: SizedBox(
                  width: 198,
                  child: Text(
                    'ទិញ លក់ និង បរិច្ចាគ សៀវភៅ',
                    style: TextStyle(
                      color: const Color(0xFF016630),
                      fontSize: 16,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 73,
                top: 178,
                child: SizedBox(
                  width: 297,
                  child: Text(
                    'ផ្លែតហ្វមដំបូងគេនៅកម្ពុជា សម្រាប់ការសិក្សាប្រកបដោយនិរន្តរភាព។ សន្សំសំចៃថវិកា កាត់បន្ថយសំណល់ និងគាំទ្រដល់សិស្ស និស្សិតដូចគ្នា។',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6F6F6F),
                      fontSize: 11,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 243,
                child: Container(
                  width: 383,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 115,
                        top: 38,
                        child: Container(
                          width: 1,
                          height: 1,
                          decoration:
                              const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 383,
                          height: 39,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFECECEC),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                color: Color(0xFFB9F8CF),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 7,
                        child: Container(
                          width: 25,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 12,
                        child: SizedBox(
                          width: 223,
                          child: Text(
                            'ស្វែងរកសៀវភៅសិក្សា ប្រធានបទ ឬថ្នាក់...',
                            style: TextStyle(
                              color: const Color(0xFF858585),
                              fontSize: 10,
                              fontFamily: 'Siemreap',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 302,
                        top: 6,
                        child: Container(
                          width: 74,
                          height: 27,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF00A63E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 324,
                        top: 11,
                        child: SizedBox(
                          width: 30,
                          child: Text(
                            'ស្វែងរក',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Siemreap',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 321,
                child: Container(
                  width: 52,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF00A63E),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 295,
                top: 321,
                child: Container(
                  width: 52,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF155DFC),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 295,
                top: 448,
                child: Container(
                  width: 52,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF54A00),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 87,
                top: 448,
                child: Container(
                  width: 52,
                  height: 50,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF9810FA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 79,
                top: 384,
                child: SizedBox(
                  width: 71,
                  child: Text(
                    'រកមើលសៀវភៅ',
                    style: TextStyle(
                      color: const Color(0xFF256630),
                      fontSize: 11,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 287,
                top: 384,
                child: SizedBox(
                  width: 69,
                  child: Text(
                    'បរិច្ចាគសៀវភៅ',
                    style: TextStyle(
                      color: const Color(0xFF193CB8),
                      fontSize: 11,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 312,
                top: 508,
                child: SizedBox(
                  width: 18,
                  child: Text(
                    'សារ',
                    style: TextStyle(
                      color: const Color(0xFFD77500),
                      fontSize: 11,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 508,
                child: SizedBox(
                  width: 47,
                  child: Text(
                    'សហគមន៍',
                    style: TextStyle(
                      color: const Color(0xFF8011B7),
                      fontSize: 11,
                      fontFamily: 'Siemreap',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              // ... (rest of the layout kept as-is from the provided snippet)
              Positioned(
                left: 12,
                top: 0,
                child: Container(
                  width: 64,
                  height: 53,
                  padding: const EdgeInsets.only(left: 16, right: 6),
                  child: const Center(
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                        height: 1.29,
                      ),
                    ),
                  ),
                ),
              ),
              // keep more Positioned widgets as needed; omitted here for brevity
            ],
          ),
        ),
      ],
    );
  }
}
