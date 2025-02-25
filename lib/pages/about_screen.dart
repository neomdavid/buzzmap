import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buzzmap/pages/menu_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background images
          Positioned.fill(
            child: Stack(
              // Horizontal, Vertical, Width, Height
              children: [
                _buildBackgroundImage(
                    'assets/bgarts/Line3.svg', 0.003, 0.006, 300, 300),
                _buildBackgroundImage(
                    'assets/bgarts/Line1.svg', 0.90, 0.072, 200, 200),
                _buildBackgroundImage(
                    'assets/bgarts/RunMan.svg', 0.00001, 0.273, 200, 200),
                _buildBackgroundImage(
                    'assets/bgarts/Gentleman.svg', 0.61, 0.23, 250, 250),
                _buildBackgroundImage(
                    'assets/bgarts/AntiD.svg', 0.72, 0.72, 250, 250),
                _buildBackgroundImage(
                    'assets/bgarts/Line1.svg', 0.0003, 0.5, 200, 200),
                _buildBackgroundImage(
                    'assets/bgarts/Line2.svg', 0.65, 0.52, 200, 200),
                _buildBackgroundImage(
                    'assets/bgarts/ManHand.svg', 0.0003, 0.7, 250, 250),
              ],
            ),
          ),

          // Main content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 36, // Smaller circle size
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF2D5D68), // Background color
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back,
                              size: 23), // Smaller icon size
                          color: Colors.white, // Icon color
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.zero, // Remove padding
                          constraints:
                              const BoxConstraints(), // Remove default constraints
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.menu,
                            size: 32,
                            color: Theme.of(context).colorScheme.primary),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MenuScreen(currentRoute: '/about')),
                          );
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Align items vertically
                    children: [
                      // SVG logo on the left, with adjusted vertical position
                      Transform.translate(
                        offset: const Offset(1, 10), // Adjust Y-axis offset
                        child: SvgPicture.asset(
                          'assets/icons/logo_ligthbg.svg', // Replace with your SVG path
                          width: 60, // Logo width
                          height: 60, // Logo height
                        ),
                      ),
                      const SizedBox(width: 1), // Space between logo and text

                      // Text on the right
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 40.0), // Push text left
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontFamily: 'Koulen',
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                            children: [
                              TextSpan(
                                text: 'ABOUT ',
                                style: TextStyle(
                                  fontSize: 40,
                                  letterSpacing: 1.2,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              TextSpan(
                                text: '\nBUZZ',
                                style: TextStyle(
                                  fontSize: 60,
                                  letterSpacing: 1.2,
                                  fontStyle: FontStyle.italic,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              TextSpan(
                                text: 'MAP',
                                style: TextStyle(
                                  fontSize: 60,
                                  letterSpacing: 1.2,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromRGBO(96, 147, 175, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        height: 1.36,
                      ),
                      children: [
                        const TextSpan(
                          text: 'BuzzMap ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700), // Bold BUZZMAP
                        ),
                        const TextSpan(
                          text:
                              'is proud to partner with the Quezon City \n Epidemiology & Surveillance Division, specifically Quezon City Environmental and Sanitation Unit ',
                        ),
                        const TextSpan(
                          text: '(QC CESU)',
                          style: TextStyle(
                              fontWeight: FontWeight.w700), // Bold QC CESU
                        ),
                        const TextSpan(
                          text:
                              ' in the fight \n against dengue outbreaks. Together, we aim to empower the community with real-time data, alerts, and prevention tips, \n creating a united effort to reduce the spread of dengue and \n protect public health across Quezon City.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'MISSION',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Koulen',
                      color: Color.fromRGBO(96, 147, 175, 1),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 1),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.36,
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface, // Use your color scheme
                      ),
                      children: [
                        TextSpan(
                          text:
                              'BuzzMap is dedicated to empowering communities through \n real-time dengue tracking, crowdsourced reports, and \n data-driven insights.',
                          style: TextStyle(
                            fontWeight: FontWeight.w700, // Bold for BuzzMap
                            color: Theme.of(context)
                                .colorScheme
                                .primary, // Optional: Primary color for BuzzMap
                          ),
                        ),
                        TextSpan(
                          text:
                              ' By partnering with local health\n agencies like QC CESU, we strive to enhance public\n awareness, promote proactive dengue prevention, and\n support rapid response efforts to reduce outbreaks and \nprotect lives.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    'VISION',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Koulen',
                      color: Color.fromRGBO(96, 147, 175, 1),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'To be the leading community-driven dengue prevention\n platform, harnessing technology and collective action to \ncreate a safer, healthier, and dengue-free future for all.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 11),
                  ),

                  // Main content
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'MEET THE TEAM',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Koulen',
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Team members in a blue card with gradient background
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(
                                      36, 82, 97, 1), // Starting color
                                  Color.fromRGBO(74, 168, 199, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                        child: _buildTeamMember(
                                            'assets/team/Zophia.svg',
                                            'Zophia Rey',
                                            'Project Manager')),
                                    const SizedBox(width: 5),
                                    Expanded(
                                        child: _buildTeamMember(
                                            'assets/team/Neo.svg',
                                            'Neo David',
                                            'Programmer')),
                                    const SizedBox(width: 5),
                                    Expanded(
                                        child: _buildTeamMember(
                                            'assets/team/Tyrel.svg',
                                            'Tyrel Cruz',
                                            'Systems Analyst')),
                                    const SizedBox(width: 5),
                                    Expanded(
                                        child: _buildTeamMember(
                                            'assets/team/Rapi.svg',
                                            'Russel Rapi',
                                            'Technical Writer')),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Community-Powered, Data-Driven, Dengue-Free!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
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
        ],
      ),
    );
  }

  Widget _buildBackgroundImage(
      String assetPath, double left, double top, double width, double height) {
    return Positioned(
      left: left *
          MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width,
      top: top *
          MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height,
      child: Opacity(
        opacity: 1,
        child: SvgPicture.asset(
          assetPath,
          width: width,
          height: height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // Updated team member widget to control size
  Widget _buildTeamMember(String svgPath, String name, String role) {
    return Flexible(
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                svgPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            role,
            style: const TextStyle(
              fontSize: 7,
              color: Colors.white70,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
// Now the screen has a back button and a menu button, without an app bar! 🚀
