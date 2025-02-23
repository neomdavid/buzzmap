import 'package:buzzmap/main.dart';
import 'package:buzzmap/widgets/engagement_row.dart';
import 'package:buzzmap/widgets/user_info_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserInfoRow(
                      title: 'Important announcement',
                      subtitle:
                          'Quezon City Epidemiology & Surveillance Division (CESU)',
                      iconUrl: 'assets/icons/surveillance_logo.svg'),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: RichText(
                      text: TextSpan(
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: '🚨 DENGUE OUTBREAK IN QUEZON CITY! 🚨\n',
                            style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text: 'Quezon City is currently facing a ',
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'dengue outbreak',
                            style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text: ', with cases surging by ',
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          TextSpan(
                            text: '200% from January 1 to February 14.',
                            style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text:
                                ' Residents are urged to take immediate precautions to prevent the spread of the disease.\n🔴 What You Need to Know:\n✅ Dengue cases have drastically increased—stay alert!\n',
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'Read more...',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Image(
                    height: 200,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/2116/69ab/45687c69d4566c2c5945c6fddc376891?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SAmDUTwSeRhCu~SEit1oH~hBQCy0slLNTKZ421pC0xWjdzwBgh1B0qJeiQ-5b0cTrPuRiJ3kAJp7WC8gCxZkftfeWFm3Bwmd-qLyGY-e9eUVgMP04x~2gORoZHFTyGi9rFUEePPWKqu4dQ8WToKmAuPTkyazco0KayRz4255U3yV52pI3edm6AeQk~-QE0g25zkc1S0nFCx5JTKa1vynLx55Gw88~LiBzxIG7Ri9ae3FgeqetJ9IqB0xofIW~7FPZG3yYYinM5Iz3GAYEdjFvTdYKs5jh~fJ2kBjwsWCULjv1xEVSYtJAgwRJcs6RjtZBRbuRf3qzpi6mzAfpzBzig__'),
                  ),
                  Divider(
                    color: customColors?.surfaceLight,
                    thickness: .9,
                    height: 36,
                  ),
                  const EngagementRow(
                    numLikes: 100,
                    numComments: 20,
                    numShares: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Divider(
          thickness: 8,
          color: Colors.grey[300],
        )
      ],
    );
  }
}
