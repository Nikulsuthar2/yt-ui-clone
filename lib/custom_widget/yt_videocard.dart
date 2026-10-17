import 'package:flutter/material.dart';

class YTVideoCard extends StatelessWidget {
  final String videoThumbnail;
  final String videoDuration;
  final String channelImage;
  final String videoTitle;
  final String channelName;
  final String videoViews;
  final String uploadTime;
  const YTVideoCard(
      {Key? key,
      required this.videoThumbnail,
      required this.channelImage,
      this.videoDuration = "10:30",
      required this.videoTitle,
      required this.channelName,
      this.videoViews = "150K",
      this.uploadTime = "1 month ago"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                videoThumbnail,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Colors.black38,
                        child: IconButton(
                          icon: const Icon(Icons.volume_off),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Colors.black38,
                        child: IconButton(
                          icon: const Icon(Icons.closed_caption_off),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      videoDuration,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: Image.asset(
                  channelImage,
                  fit: BoxFit.cover,
                ).image,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      videoTitle,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          channelName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white60,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white60,
                            radius: 1.5,
                          ),
                        ),
                        Text(
                          videoViews,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white60,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white60,
                            radius: 1.5,
                          ),
                        ),
                        Text(
                          uploadTime,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
