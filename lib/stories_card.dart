import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9"))),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "deborahika",
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class StoriesStack extends StatelessWidget {
  const StoriesStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9")),
              )),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3.0)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Your Story",
        style: TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
      ),
    ]);
  }
}
