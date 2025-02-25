import 'package:flutter/material.dart';
import 'package:buzzmap/widgets/appbar/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationDetailsScreen extends StatefulWidget {
  final String location;

  const LocationDetailsScreen({super.key, required this.location});

  @override
  State<LocationDetailsScreen> createState() => _LocationDetailsScreenState();
}

class _LocationDetailsScreenState extends State<LocationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: CustomAppBar(
        title: widget.location,
        currentRoute: '/community',
        themeMode: 'dark',
      ),
      body: Column(
        children: [
          // Background container covering 30% of the screen with the map image
          Stack(
            clipBehavior: Clip.none, // Ensures elements are not clipped
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color.fromRGBO(36, 82, 97, 1), // Background color
              ),
              Positioned(
                top: 20, // Increase spacing
                left: 24,
                right: 24,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.location_on,
                          color: Colors.amber, size: 20),
                      const SizedBox(width: 5),
                      Text(
                        widget.location,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 11,
                left: 0,
                right: 0,
                child: Container(
                  height: 230,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/bgarts/locationdets.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 34,
                child: SizedBox(
                  width: 116,
                  height: 31,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(248, 169, 0, 1),
                          Color.fromRGBO(250, 221, 55, 1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        "Back to Maps",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Color.fromRGBO(36, 82, 97, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Scrollable section
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Were there any cases related to Dengue \nthat you can share with us in this area?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(36, 82, 97, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    "REPORT NOW!",
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Koulen',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(36, 82, 97, 1),
                    ),
                  ),
                  SizedBox(
                    height: 300, // Fixed height
                    width: 380,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(36, 82, 97, 1),
                            Color.fromRGBO(74, 168, 199, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 46,
                                  height: 46,
                                  child: SvgPicture.asset(
                                    'assets/icons/Person.svg',
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Row(
                                      children: [
                                        Icon(Icons.access_time,
                                            color: Colors.white, size: 16),
                                        SizedBox(width: 5),
                                        Text(
                                          "Date and Time: February 15, 2025, 3:45 PM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.warning,
                                            color: Colors.white, size: 16),
                                        SizedBox(width: 5),
                                        Text(
                                          "Report Type: Suspected Dengue Outbreak",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Description:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                "Mosquito sightings are common near the CEB Parking Lot, where stagnant water has accumulated after recent rains. Some areas around the lagoon also have poor drainage, increasing the risk of mosquito breeding. Requesting cleanup and possible fumigation to reduce the risk of further infections.",
                                style: TextStyle(
                                  color: Color.fromRGBO(36, 82, 97, 1),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  minimumSize: const Size(180, 40),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 20),
                                  child: Text(
                                    "Send Report",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromRGBO(36, 82, 97, 1),
                                    ),
                                  ),
                                ),
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
        ],
      ),
    );
  }
}
