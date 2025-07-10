import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ranway/Models/Categories_Model.dart';
import 'package:ranway/Pages/Details_Category.dart';
import 'package:ranway/Widgets/Custome_AppBar.dart';
import 'package:video_player/video_player.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/videos/video.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      })
      ..setLooping(true);
    super.initState();
  }

  List<CategoryModel> category = [
    CategoryModel(image: "assets/image/woman.png", name: "Women"),
    CategoryModel(image: "assets/image/men.png", name: "Men"),
    CategoryModel(image: "assets/image/kids.png", name: "Kids"),
    CategoryModel(image: "assets/image/deals.png", name: "Deals"),
    CategoryModel(image: "assets/image/home.png", name: "Health"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppbar(
        prefix: 'assets/image/filtter.svg',
        title: 'Runawy',
        Suffix: 'assets/image/notf.svg',
      ),

      body: Stack(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(color: Colors.white),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Categories',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff131313),
                          ),
                        ),
                      ),
                    ),

                    Gap(18),

                    SizedBox(
                      height: 100,
                      
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, __) => const SizedBox(width: 12),
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          final show = category[index];
                          return GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => DetailsCategory(),),),
                            child: Column(
                              children: [
                            
                                Container(
                                  height: 75,
                                  width: 75,
                            
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                   ),
                                   child: Image.asset(show.image),
                                ),
                            
                                Text(show.name),
                              ],
                            ),
                          );
                        },
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
