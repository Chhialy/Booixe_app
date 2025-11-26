import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 440,
              height: 1130,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Color(0xFFF2FDF5)),
              child: Stack(
                children: [
                  Positioned(
                    left: 156,
                    top: 212,
                    child: SizedBox(
                      width: 128,
                      height: 22,
                      child: Text(
                        'Booxie',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF2D92DF),
                          fontSize: 24,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w700,
                          height: 0.92,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 65,
                    top: 249,
                    child: SizedBox(
                      width: 323,
                      height: 22,
                      child: Text(
                        'ទីផ្សារសៀវភៅ និងសម្ភារៈសិក្សានៅបរិវេណសាកលវិទ្យាល័យ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 133,
                    top: 823,
                    child: SizedBox(
                      width: 175,
                      height: 22,
                      child: Text(
                        'ហេតុអ្វីជ្រើសរើស Booxie?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 290,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(19),
                      child: Container(
                        width: 382,
                        height: 188,
                        color: Colors.grey.shade300,
                        child: const Center(
                            child: Icon(Icons.image,
                                size: 48, color: Colors.white70)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 852,
                    child: SizedBox(
                      width: 246,
                      height: 33,
                      child: Text(
                        'អ្វីៗគ្រប់យ៉ាងដែលអ្នកត្រូវការសម្រាប់ដំណើរសិក្សារបស់អ្នក',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xB2727272),
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 495,
                    child: Container(
                      width: 184,
                      height: 144,
                      decoration: BoxDecoration(
                        color: const Color(0x5BFFF5CD),
                        border: Border.all(
                            width: 1, color: const Color(0xFFFFDB4F)),
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 566,
                    child: SizedBox(
                      width: 71,
                      height: 25,
                      child: Text(
                        'តម្លៃល្អបំផុត',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.83,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 599,
                    child: SizedBox(
                      width: 170,
                      height: 33,
                      child: Text(
                        'សន្សំលុយលើសៀវភៅ និងសម្ភារៈសិក្សា',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF727272),
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 510,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFE9A00),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 109,
                    top: 518,
                    child: Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(),
                    ),
                  ),
                  Positioned(
                    left: 227,
                    top: 495,
                    child: Container(
                      width: 184,
                      height: 144,
                      decoration: BoxDecoration(
                        color: const Color(0x2BFF89D7),
                        border: Border.all(
                            width: 1, color: const Color(0xE2FF41BF)),
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 272,
                    top: 567,
                    child: SizedBox(
                      width: 95,
                      height: 25,
                      child: Text(
                        'បរិច្ចាគ និងរកប្រាក់',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.83,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 237,
                    top: 599,
                    child: SizedBox(
                      width: 165,
                      height: 33,
                      child: Text(
                        'គាំទ្រសិស្ស និងទទួលបានពិន្ទុរង្វាន់',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF727272),
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 656,
                    child: Container(
                      width: 184,
                      height: 144,
                      decoration: BoxDecoration(
                        color: const Color(0x268FAAE5),
                        border: Border.all(
                            width: 1, color: const Color(0xFF155DFC)),
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 92,
                    top: 723,
                    child: SizedBox(
                      width: 59,
                      height: 25,
                      child: Text(
                        'សហគមន៍',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.83,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 39,
                    top: 753,
                    child: SizedBox(
                      width: 165,
                      height: 33,
                      child: Text(
                        'ចែករំលែកបទពិសោធន៍ជាមួយអ្នកស្រលាញ់សៀវភៅ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF727272),
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 671,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2D92DF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 59,
                    top: 913,
                    child: SizedBox(
                      width: 116,
                      height: 17,
                      child: Text(
                        'ទិញដោយទំនុកចិត្តពីអ្នកលក់',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xCC727272),
                          fontSize: 10,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2.20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 62,
                    top: 988,
                    child: SizedBox(
                      width: 134,
                      height: 20,
                      child: Text(
                        'ភាពជាដៃគូជាមួយ J&T Express ជាមួយការបញ្ចុះតម្លៃពិសេស',
                        style: TextStyle(
                          color: const Color(0xCC727272),
                          fontSize: 10,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 233,
                    top: 988,
                    child: SizedBox(
                      width: 190,
                      child: Text(
                        'ទទួលបានពិន្ទុលើការទិញ និងការបរិច្ចាគទាំងអស់',
                        style: TextStyle(
                          color: const Color(0xCC727272),
                          fontSize: 10,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 232,
                    top: 913,
                    child: SizedBox(
                      width: 179,
                      height: 17,
                      child: Text(
                        'ការបញ្ចូលគ្នារបស់ធនាគារ ABA និង ACLEDA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xCC727272),
                          fontSize: 10,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2.20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 893,
                    child: SizedBox(
                      width: 118,
                      height: 15,
                      child: Text(
                        'អ្នកលក់ដែលបានផ្ទៀងផ្ទាត់',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 62,
                    top: 964,
                    child: SizedBox(
                      width: 84,
                      height: 15,
                      child: Text(
                        'ការដឹកជញ្ជូនលឿន',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 232,
                    top: 965,
                    child: SizedBox(
                      width: 41,
                      height: 15,
                      child: Text(
                        'ពិន្ទុរង្វាន់',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 233,
                    top: 891,
                    child: SizedBox(
                      width: 81,
                      height: 17,
                      child: Text(
                        'ការទូទាត់សុវត្ថិភាព',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 227,
                    top: 656,
                    child: Container(
                      width: 184,
                      height: 144,
                      decoration: BoxDecoration(
                        color: const Color(0x16B260EE),
                        border: Border.all(
                            width: 1, color: const Color(0xD89810FA)),
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 272,
                    top: 723,
                    child: SizedBox(
                      width: 95,
                      height: 25,
                      child: Text(
                        'ជំនួយការ AI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w400,
                          height: 1.83,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 237,
                    top: 753,
                    child: SizedBox(
                      width: 165,
                      height: 33,
                      child: Text(
                        'ទទួលបានការណែនាំសៀវភៅតាមបំណងប្រាថ្នា',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF727272),
                          fontSize: 11,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 299,
                    top: 671,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF9810FA),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 299,
                    top: 510,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF227AE),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top: 900,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xD39810FA),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top: 966,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF55722),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 201,
                    top: 966,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2D92DF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 201,
                    top: 900,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xE5FA1013),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 1096,
                    child: Container(
                      width: 440,
                      height: 34,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 292,
                            top: 26,
                            child: Transform(
                              transform: Matrix4.identity()..rotateZ(3.14),
                              child: Container(
                                width: 144,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 912,
                    child: Container(width: 440, height: 34, child: Stack()),
                  ),
                  Positioned(
                    left: 153,
                    top: 63,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 135,
                        height: 135,
                        color: Colors.grey.shade400,
                        child: const Center(
                            child: Icon(Icons.person,
                                size: 48, color: Colors.white70)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: 0,
                    child: Container(
                      width: 64,
                      height: 53,
                      padding: const EdgeInsets.only(left: 16, right: 6),
                      child: const Center(
                        child: Text(
                          '9:41',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w600,
                            height: 1.29,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 341,
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
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(4.30),
                              ),
                            ),
                          ),
                          Container(
                            width: 21,
                            height: 9,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 180,
                    top: 1055,
                    child: SizedBox(
                      width: 77.51,
                      height: 19,
                      child: Text(
                        'ចាប់ផ្ដើម',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFF5F5F5),
                          fontSize: 15,
                          fontFamily: 'Siemreap',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ),
                  ),
                  // Small counter display for tests and quick debugging
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      color: Colors.white70,
                      child: Text('Counter: ${counter.value}',
                          style: const TextStyle(color: Colors.black)),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 48,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/details'),
                      child: const Text('Go to Details'),
                    ),
                  ),
                  // Place FAB near the top so it's visible in small test viewports
                  Positioned(
                    right: 16,
                    top: 16,
                    child: FloatingActionButton(
                      onPressed: counter.increment,
                      child: const Icon(Icons.add),
                    ),
                  ),
                  // Small button to open the Research screen
                  Positioned(
                    right: 80,
                    top: 16,
                    child: FloatingActionButton(
                      heroTag: 'research-fab',
                      mini: true,
                      onPressed: () =>
                          Navigator.pushNamed(context, '/research'),
                      child: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ផ្ទះ'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'ស្វែងរក'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 36), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'សហគមន៍'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'គណនី'),
        ],
      ),
    );
  }
}
