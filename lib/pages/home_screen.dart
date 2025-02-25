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
                color: colorScheme.primary, // Background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6), // Shadow color
                    blurRadius: 6, // Blur radius
                    offset: const Offset(0, 5), // Shadow offset (x, y)
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
                              color: colorScheme.surface,
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
                    _buildAwarenessSection(
                        colorScheme), // Removed extra spacing
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'DENGUE ',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: colorScheme
                                  .primary, // Use primary color for "DENGUE"
                              fontFamily: 'Koulen',
                            ),
                          ),
                          TextSpan(
                            text: 'PREVENTION ',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: const Color.fromARGB(255, 255, 222,
                                  59), // Use yellow for "PREVENTION"
                              fontFamily: 'Koulen',
                            ),
                          ),
                          TextSpan(
                            text: 'TIPS',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: colorScheme
                                  .primary, // Use primary color for "TIPS"
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
          crossAxisAlignment: CrossAxisAlignment.start, // Align to the top
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
                  height: 110, // Adjusted to align with the bigger card
                ),
                const SizedBox(
                    height: 3), // Small spacing between card and button
                Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(248, 169, 0, 1), // Left color
                        Color.fromRGBO(250, 221, 55, 1), // Right color
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius:
                        BorderRadius.circular(30), // Match button shape
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent, // Transparent to show gradient
                      shadowColor: Colors.transparent, // Remove shadow
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
        clipBehavior: Clip.none, // Allow image to overflow the card
        children: [
          // Background Card
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
                // Left side (Text and Button)
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

                      // Gradient Button
                      // Gradient Button Wrapper
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
                          color: Colors
                              .transparent, // Transparent to show gradient
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {}, // Button action
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 4), // Modify vertical size freely
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

          // Overlapping Image
          Positioned(
            right: -15, // Move image slightly outside the card
            top: -1,
            child: SizedBox(
              width: 140,
              height: 150,
              child: OverflowBox(
                maxWidth: 140, // Allow it to extend beyond card
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
                    fontSize: 11,
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
                color: Colors.transparent, // Transparent to show gradient
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {}, // Button action
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 4), // Modify vertical size freely
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
        width: 300, // Set a fixed width for the button (adjust as needed)
        height: 30, // Set a fixed height for the button (adjust as needed)
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
        // Wrap the button Container in a SizedBox or ConstrainedBox
        SizedBox(
          height: 45,
          width: 350, // Set a fixed width for the button (adjust as needed)
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [colorScheme.primary, colorScheme.surface],
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
                // Left Side: Asset Image (as before)
                Container(
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/icons/Person.svg', // Replace with the path to your SVG file
                      width: 40, // Set the exact width
                      height:
                          40, // Replace with the path to your local image asset
                      fit: BoxFit.cover, // Adjust the fit as needed
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons
                              .person, // Fallback icon if the image fails to load
                          color: Colors.white,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Middle: Text Container
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
                // Right Side: Flutter Icon (Send Button) - No Box Shape
                Icon(
                  Icons.send, // Flutter send icon
                  color: Colors.white, // White icon color
                  size: 24, // Adjust size as needed
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 12),
        SizedBox(
          width: 250, // Set a fixed width for the button (adjust as needed)
          height: 40, // Set a fixed height for the button (adjust as needed)
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, // Text color
              padding: const EdgeInsets.symmetric(
                  horizontal: 14, vertical: 6), // Button padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              backgroundColor:
                  Colors.transparent, // Make button background transparent
              shadowColor: Colors.transparent, // Remove shadow
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange, // Start color
                    const Color.fromARGB(255, 246, 174, 68), // End color
                  ],
                  begin: Alignment.centerLeft, // Gradient starts from the left
                  end: Alignment.centerRight, // Gradient ends at the right
                ),
                borderRadius:
                    BorderRadius.circular(30), // Match button's border radius
              ),
              child: Container(
                alignment: Alignment.center,
                child: _buildText(
                  'Read more dengue reports here.',
                  style: TextStyle(
                    color: colorScheme.primary, // Ensure text is white
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
