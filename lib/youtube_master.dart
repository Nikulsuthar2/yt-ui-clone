import 'package:flutter/material.dart';
import 'package:ytuiclone/custom_widget/chip.dart';
import 'package:ytuiclone/custom_widget/yt_videocard.dart';

class YoutubeMain extends StatefulWidget {
  const YoutubeMain({Key? key}) : super(key: key);

  @override
  State<YoutubeMain> createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int selectedidx = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              snap: true,
              title: Image.asset(
                "assets/youtube_dark.jpg",
                height: 20,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.cast_sharp),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications_none_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                InkWell(
                  child: CircleAvatar(
                    backgroundImage: Image.asset(
                      "assets/nik.jpg",
                      fit: BoxFit.cover,
                    ).image,
                    radius: 13,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                )
              ],
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Icon(Icons.explore_outlined),
                            chipHeight: 30,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text(
                              "All",
                              style: TextStyle(color: Colors.black),
                            ),
                            chipHeight: 30,
                            chipRadius: 8,
                            selected: true,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("Gaming"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("Live"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("Music"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("Poadcasts"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("Animated films"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("Cars"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          YTChip(
                            chipChild: Text("New to you"),
                            chipHeight: 30,
                            chipRadius: 8,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Send feedback",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          body: const SingleChildScrollView(
            child: Column(children: [
              YTVideoCard(
                videoThumbnail: 'assets/ironman1.png',
                channelImage: 'assets/ironman.png',
                videoTitle: 'Ironman 2',
                channelName: 'Ironman',
              ),
              YTVideoCard(
                videoThumbnail: 'assets/spidey.png',
                channelImage: 'assets/spidey.png',
                videoTitle: 'Spiderman video game',
                channelName: 'Sony PS5',
              ),
              YTVideoCard(
                videoThumbnail: 'assets/google.jpeg',
                channelImage: 'assets/nik.jpg',
                videoTitle: 'How to use google',
                channelName: 'Nikul Suthar',
                videoViews: "3.5M",
                uploadTime: "1 year ago",
                videoDuration: "5:45",
              ),
              YTVideoCard(
                videoThumbnail: 'assets/ironman1.png',
                channelImage: 'assets/ironman.png',
                videoTitle: 'Ironman 2',
                channelName: 'Ironman',
              ),
              YTVideoCard(
                videoThumbnail: 'assets/spidey.png',
                channelImage: 'assets/spidey.png',
                videoTitle: 'Spiderman video game',
                channelName: 'Sony PS5',
              ),
              YTVideoCard(
                videoThumbnail: 'assets/google.jpeg',
                channelImage: 'assets/nik.jpg',
                videoTitle: 'How to use google',
                channelName: 'Nikul Suthar',
                videoViews: "3.5M",
                uploadTime: "1 year ago",
                videoDuration: "5:45",
              ),
              YTVideoCard(
                videoThumbnail: 'assets/spidey.png',
                channelImage: 'assets/spidey.png',
                videoTitle: 'Spiderman video game',
                channelName: 'Sony PS5',
              ),
              YTVideoCard(
                videoThumbnail: 'assets/ironman1.png',
                channelImage: 'assets/ironman.png',
                videoTitle: 'Ironman 2',
                channelName: 'Ironman',
              ),
              YTVideoCard(
                videoThumbnail: 'assets/google.jpeg',
                channelImage: 'assets/nik.jpg',
                videoTitle: 'How to use google',
                channelName: 'Nikul Suthar',
                videoViews: "3.5M",
                uploadTime: "1 year ago",
                videoDuration: "5:45",
              ),
            ]),
          ),
        ),
        drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 51, 51, 51),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/youtube_dark.jpg",
                    height: 20,
                  ),
                  const ListTile(
                    leading: const Icon(Icons.trending_up_sharp),
                    title: const Text("Trending"),
                  ),
                ],
              ),
            )),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            currentIndex: selectedidx,
            onTap: (idx) {
              setState(() {
                selectedidx = idx;
              });
            },
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Column(children: [
                  Icon(Icons.home_outlined),
                  SizedBox(height: 3),
                  Text("Home", style: TextStyle(fontSize: 12))
                ]),
                activeIcon: Column(children: [
                  Icon(Icons.home),
                  SizedBox(height: 3),
                  Text("Home", style: TextStyle(fontSize: 12))
                ]),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Column(children: [
                  Icon(Icons.face_retouching_natural_outlined),
                  SizedBox(height: 3),
                  Text("Shorts", style: TextStyle(fontSize: 12))
                ]),
                activeIcon: Column(children: [
                  Icon(Icons.face_retouching_natural),
                  SizedBox(height: 3),
                  Text("Shorts", style: TextStyle(fontSize: 12))
                ]),
                label: 'Shorts',
              ),
              BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 40,
                  ),
                  label: 'Add'),
              BottomNavigationBarItem(
                icon: Column(children: [
                  Icon(Icons.subscriptions_outlined),
                  SizedBox(height: 3),
                  Text("Subscription", style: TextStyle(fontSize: 12))
                ]),
                activeIcon: Column(children: [
                  Icon(Icons.subscriptions_rounded),
                  SizedBox(height: 3),
                  Text("Subscription", style: TextStyle(fontSize: 12))
                ]),
                label: 'Shorts',
              ),
              BottomNavigationBarItem(
                icon: Column(children: [
                  Icon(Icons.video_collection_outlined),
                  SizedBox(height: 3),
                  Text("Library", style: TextStyle(fontSize: 12))
                ]),
                activeIcon: Column(children: [
                  Icon(Icons.video_collection_rounded),
                  SizedBox(height: 3),
                  Text("Library", style: TextStyle(fontSize: 12))
                ]),
                label: 'Library',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
