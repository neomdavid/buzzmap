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
            height: MediaQuery.of(context).size.height * 0.33,
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
                padding: const EdgeInsets.only(top: 59.0),
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
                  ],
                ),
              ),
            ),
          ),
        ],
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
        _buildText(
          'Report Cases, Raise Awareness, and \n Help Protect Your Community!',
          style: TextStyle(
            fontSize: 16,
            color: colorScheme.primary,
            fontFamily: 'Koulen',
          ),
        ),
        const SizedBox(height: 16),
        // Wrap the button Container in a SizedBox or ConstrainedBox
        SizedBox(
          height: 45,
          width: 300, // Set a fixed width for the button (adjust as needed)
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
                      color: Color.fromRGBO(219, 235, 243, 255),
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
                    fontSize: 10,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
