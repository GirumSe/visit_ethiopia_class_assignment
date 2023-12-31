import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'widgets/bnav.dart';
import 'widgets/catagory_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visit Ethiopia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 229, 215, 253)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Visit Ethiopia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: 390,
        height: 844,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            const Positioned(
              left: 40,
              top: 30,
              child: SizedBox(
                width: 210,
                height: 57,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Where do \n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'you want to visit?\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: -5,
              top: 34,
              child: Container(
                width: 395,
                height: 167,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image15.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Stack(children: [
              CategorySelector(),
            ]),
            Positioned(
              left: 75,
              top: 40,
              child: SizedBox(
                width: 380,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 258.40,
                        height: 41,
                        decoration: ShapeDecoration(
                          color: const Color(0x7FBBBBBB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 55.80,
                      top: 10,
                      child: SizedBox(
                        width: 140.79,
                        height: 17.26,
                        child: Text(
                          'Discover Ethiopia',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9.44,
                      top: 12.23,
                      child: Container(
                        width: 21.46,
                        height: 17.98,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/21x18"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 24,
              top: 240,
              child: Text(
                'Explore Places',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Positioned(
              left: 28,
              top: 576,
              child: Text(
                'Catagories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 344,
              child: SizedBox(
                width: 390,
                height: 232,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SizedBox(
                        width: 390,
                        height: 190,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 126,
                                height: 190,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 126,
                                        height: 130,
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 3,
                                          right: 3.81,
                                          bottom: 20,
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x7F706759),
                                              blurRadius: 4,
                                              offset: Offset(0, 9),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 119.19,
                                              height: 105,
                                              decoration: ShapeDecoration(
                                                image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/119x105"),
                                                  fit: BoxFit.cover,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                shadows: const [
                                                  BoxShadow(
                                                    color: Color(0xFF43381E),
                                                    blurRadius: 3,
                                                    offset: Offset(0, 3),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 126,
                                        height: 190,
                                        decoration: ShapeDecoration(
                                          color: Colors.black
                                              .withOpacity(0.10000000149011612),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      top: 121,
                                      child: Text(
                                        'Fasilidas',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 31,
                                      top: 144,
                                      child: Text(
                                        'Gonder',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.6000000238418579),
                                          fontSize: 8,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 16,
                                      top: 143,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/12x12"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 109,
                                      top: 161,
                                      child: Container(
                                        width: 14,
                                        height: 16,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/14x16"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 131,
                              top: 0,
                              child: SizedBox(
                                width: 126,
                                height: 190,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 126,
                                        height: 130,
                                        padding: const EdgeInsets.only(
                                          top: 6,
                                          left: 3,
                                          right: 3,
                                          bottom: 20.08,
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x7F706759),
                                              blurRadius: 4,
                                              offset: Offset(0, 9),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 103.92,
                                              decoration: ShapeDecoration(
                                                image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/120x104"),
                                                  fit: BoxFit.cover,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                shadows: const [
                                                  BoxShadow(
                                                    color: Color(0xFFFAD1C1),
                                                    blurRadius: 3,
                                                    offset: Offset(0, 3),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 126,
                                        height: 190,
                                        decoration: ShapeDecoration(
                                          color: Colors.black
                                              .withOpacity(0.10000000149011612),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      top: 121,
                                      child: Text(
                                        'Lalibela',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 31,
                                      top: 144,
                                      child: Text(
                                        'lalibela town',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.6000000238418579),
                                          fontSize: 8,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 16,
                                      top: 143,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/12x12"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 109,
                                      top: 161,
                                      child: Container(
                                        width: 14,
                                        height: 16,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/14x16"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 264,
                              top: 0,
                              child: SizedBox(
                                width: 126,
                                height: 190,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 126,
                                        height: 190,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFE5E5E5),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 126,
                                        height: 130,
                                        padding: const EdgeInsets.only(
                                          top: 6,
                                          left: 2,
                                          right: 2.85,
                                          bottom: 24,
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x7F706759),
                                              blurRadius: 4,
                                              offset: Offset(0, 9),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 121.15,
                                              height: 100,
                                              decoration: ShapeDecoration(
                                                image: const DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/121x100"),
                                                  fit: BoxFit.cover,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                shadows: const [
                                                  BoxShadow(
                                                    color: Color(0xFF656D0D),
                                                    blurRadius: 4,
                                                    offset: Offset(0, 3),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      top: 121,
                                      child: Text(
                                        'Axum',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 31,
                                      top: 144,
                                      child: Text(
                                        'aksum town',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.6000000238418579),
                                          fontSize: 8,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 16,
                                      top: 143,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/12x12"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 109,
                                      top: 161,
                                      child: Container(
                                        width: 14,
                                        height: 16,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/14x16"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 222,
                      child: Container(
                        width: 360,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 33,
              top: 615,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 63,
                      height: 75,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 0,
                            top: 60,
                            child: Text(
                              'Mountains',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6,
                            top: 0,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/45x45"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: 45,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/45x45"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 0,
                            top: 67,
                            child: Text(
                              'Culture',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: 78,
                      height: 75,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 12,
                            top: 0,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/45x45"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 0,
                            top: 60,
                            child: Text(
                              'National Park ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Stack(
                      children: [
                        Positioned(
                          left: 3,
                          top: 0,
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/45x45"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          top: 60,
                          child: Text(
                            'Churchs',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 749,
              child: Container(
                width: 365,
                height: 65,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 56,
              top: 763,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 37,
                    height: 38,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/37x38"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 45),
                  Container(
                    width: 29,
                    height: 29,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/29x29"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 45),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/28x28"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 45),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/35x35"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 67,
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/45x45"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 101,
              top: 224,
              child: Container(
                width: 197,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
