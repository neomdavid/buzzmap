import 'package:flutter/material.dart';
import 'package:buzzmap/widgets/appbar/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : colorScheme.primary;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Home',
        currentRoute: '/',
        themeMode: 'dark',
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.30,
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 6,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 44,
                            color: Colors.white,
                            fontFamily: 'Koulen',
                            letterSpacing: .5,
                            height: 1,
                          ),
                          children: [
                            TextSpan(text: 'STAY PROTECTED \nFROM '),
                            TextSpan(
                              text: 'DENGUE!',
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    _buildText(
                      'Check Dengue Hotspots in Your Area:',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontFamily: 'Inter',
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildLocationSelector(colorScheme),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'SPREAD ',
                            style: TextStyle(
                              fontFamily: 'Koulen',
                              color: Color.fromRGBO(153, 192, 211, 1),
                              fontSize: 37,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: 'AWARENESS!',
                            style: TextStyle(
                              fontFamily: 'Koulen',
                              color: textColor,
                              fontSize: 37,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildText(
                      'Report Cases, Raise Awareness, and \n Help Protect Your Community!',
                      style: TextStyle(
                          fontSize: 12,
                          color: colorScheme.primary,
                          fontFamily: 'Koulen',
                          height: 1),
                    ),
                    _buildAwarenessSection(colorScheme),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'DENGUE ',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: colorScheme.primary,
                              fontFamily: 'Koulen',
                            ),
                          ),
                          TextSpan(
                            text: 'PREVENTION ',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: const Color.fromARGB(255, 255, 222, 59),
                              fontFamily: 'Koulen',
                            ),
                          ),
                          TextSpan(
                            text: 'TIPS',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: colorScheme.primary,
                              fontFamily: 'Koulen',
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildPreventionCards(colorScheme),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreventionCards(ColorScheme colorScheme) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCard(
              colorScheme,
              'How to \nIdentify \nDengue \nMosquitoes?',
              'assets/bgarts/thinkman.png',
              width: 212,
              height: 145,
            ),
            const SizedBox(width: 12),
            Column(
              children: [
                _buildSmallCard(
                  colorScheme,
                  'TRAVELERS BEWARE!',
                  "It's a big year for Dengue.",
                  width: 150,
                  height: 120, // Adjusted to align with the bigger card
                ),
                const SizedBox(height: 3),
                Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(248, 169, 0, 1),
                        Color.fromRGBO(250, 221, 55, 1),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'More Prevention Tips',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(36, 82, 97, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCard(ColorScheme colorScheme, String text, String imagePath,
      {double width = 250, double height = 130}) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromRGBO(96, 147, 175, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.3),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(248, 169, 0, 1),
                              Color.fromRGBO(250, 221, 55, 1),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 4),
                              child: const Text(
                                'Learn More',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -15,
            top: -1,
            child: SizedBox(
              width: 140,
              height: 150,
              child: OverflowBox(
                maxWidth: 140,
                maxHeight: 180,
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallCard(ColorScheme colorScheme, String title, String subtitle,
      {double width = 140, double height = 160}) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(153, 192, 211, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Koulen',
                    letterSpacing: 1.9,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(248, 169, 0, 1),
                    Color.fromRGBO(250, 221, 55, 1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    child: const Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, {required TextStyle style}) {
    return Text(
      text,
      style: style,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildLocationSelector(ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 56.0),
      child: SizedBox(
        width: 300,
        height: 30,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: Colors.white,
              width: 1.5,
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            padding: EdgeInsets.zero,
            dropdownColor: Colors.black,
            underline: const SizedBox(),
            icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            iconSize: 24,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'Inter',
            ),
            items: <String>[
              'Baesa',
              'Balombato',
              'Bagbag',
              'Fairview',
              'Sangandaan'
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              // Handle location change
            },
            hint: const Text(
              'Select Location',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAwarenessSection(ColorScheme colorScheme) {
    return Column(
      children: [
        const SizedBox(height: 12),
        SizedBox(
          height: 45,
          width: 350,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(36, 82, 97, 1),
                  Color.fromRGBO(74, 168, 199, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Container(
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/icons/Person.svg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          color: Colors.white,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Middle | Share your report Container
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(219, 235, 243, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Share your report here...',
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 105, 105, 105),
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 250,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    const Color.fromARGB(255, 246, 174, 68),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                alignment: Alignment.center,
                child: _buildText(
                  'Read more dengue reports here.',
                  style: TextStyle(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
