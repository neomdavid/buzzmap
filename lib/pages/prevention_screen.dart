import 'package:buzzmap/main.dart';
import 'package:buzzmap/pages/tips_screen.dart';
import 'package:buzzmap/widgets/appbar/custom_app_bar.dart';
import 'package:buzzmap/widgets/article_sampler.dart';

import 'package:buzzmap/widgets/interests.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buzzmap/data/articles_data.dart';

class PreventionScreen extends StatelessWidget {
  const PreventionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Prevention',
        currentRoute: '/prevention',
        themeMode: 'dark',
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        children: [
          const SizedBox(height: 20),
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      alignment: Alignment.centerLeft,
                      height: 25,
                      width: 330,
                      decoration: const BoxDecoration(
                        color: surfaceColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: primaryColor,
                            size: 14,
                          ),
                          SizedBox(width: 10),
                          Text('What can I do to prevent dengue...',
                              style:
                                  TextStyle(fontSize: 12, color: primaryColor)),
                        ],
                      )),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 360,
                      height: 140,
                      child: Stack(clipBehavior: Clip.none, children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        const Positioned(
                            top: 10,
                            right: 20,
                            child: Text(
                              'How Can I Eliminate\nMosquito Breeding\nGrounds?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 23,
                                  color: onPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1),
                            )),
                        Positioned(
                            bottom: -110, // -50
                            left: -27, // -10
                            child: SvgPicture.asset(
                              'assets/icons/tipcard1.svg',
                              width: 325,
                              height: 325,
                            )),
                        Positioned(
                            bottom: 12,
                            right: 12,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TipsScreen()));
                                  },
                                  child: Container(
                                    width: 125,
                                    height: 31,
                                    alignment: Alignment.center,
                                    color: Colors.yellow,
                                    child: const Text('Read More'),
                                  ),
                                )))
                      ])),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 175,
                          height: 135,
                          child: Stack(clipBehavior: Clip.none, children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [primaryColor, surfaceDarkColor],
                                    tileMode: TileMode.mirror),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                                bottom: -70, // -50
                                left: -40, // -10
                                child: SvgPicture.asset(
                                  'assets/icons/tipcard2.svg',
                                  width: 250,
                                  height: 250,
                                )),
                            Positioned(
                                bottom: 12,
                                right: 12,
                                child: Container(
                                    width: 150,
                                    height: 150,
                                    color: Colors.transparent,
                                    alignment: Alignment.centerRight,
                                    child: const FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('PROTECT\nYOURSELF',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: onPrimaryColor,
                                                    height: 0.8,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('from Scary\nMosquito Bites',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: onPrimaryColor,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text.rich(
                                              TextSpan(
                                                  text:
                                                      '80% of users have\nread this article',
                                                  style: TextStyle(
                                                      fontSize: 8,
                                                      color: onPrimaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          onPrimaryColor)),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        )))),
                            Positioned(
                                bottom: 5,
                                right: 10,
                                child: ClipOval(
                                    child: Container(
                                  width: 38,
                                  height: 38,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: primaryColor),
                                )))
                          ])),
                      SizedBox(
                          width: 170,
                          height: 135,
                          child: Stack(clipBehavior: Clip.none, children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xFF4AA8C7),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                                bottom: 0, // -50
                                left: -15, // -10
                                child: SvgPicture.asset(
                                  'assets/icons/tipcard3.svg',
                                  width: 300,
                                  height: 270,
                                )),
                            Positioned(
                                top: 0,
                                right: 10,
                                child: Container(
                                    width: 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: const FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text('KEEP YOUR\nPLACE SAFE',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: onPrimaryColor,
                                              fontWeight: FontWeight.bold,
                                              height: 0.9)),
                                    ))),
                            Positioned(
                                bottom: 5,
                                right: 10,
                                child: ClipOval(
                                    child: Container(
                                  width: 38,
                                  height: 38,
                                  alignment: Alignment.center,
                                  color: primaryColor,
                                  child: const Icon(Icons.arrow_forward,
                                      color: secondaryColor),
                                )))
                          ])),
                    ],
                  )
                ],
              )),
          SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Explore Interests',
                style: TextStyle(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Interests(
                  label: 'Personal\nPrevention',
                  graphic: 'assets/images/shield.png'),
              Interests(
                  label: 'Community\nAction',
                  graphic: 'assets/images/network.png',
                  color: surfaceDarkColor),
              Interests(
                  label: 'Home\nRemedies',
                  graphic: 'assets/images/home.png',
                  color: Color(0xFF99C0D3)),
              Interests(
                  label: 'Climate &\nDengue',
                  graphic: 'assets/images/global.png',
                  color: Color(0xFFD2E2E7)),
              Interests(
                  label: 'Innovation in\nPrevention',
                  graphic: 'assets/images/brain.png',
                  color: surfaceColor),
            ],
          ),
          const SizedBox(height: 12),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Latest News Updates',
                style: TextStyle(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ArticlesData.articles.length,
            itemBuilder: (context, index) {
              return ArticleSampler(article: ArticlesData.articles[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            // children: [
            //   ...ArticlesData.articles.map((article) {
            //     return ArticleSampler(article: article);
            //   }),
            // ],
          ),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
