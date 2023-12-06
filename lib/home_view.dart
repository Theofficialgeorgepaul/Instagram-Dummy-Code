import 'package:flutter/material.dart';
import 'package:instagram_clone/post_card.dart';
import 'package:instagram_clone/stories_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Instagram",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: change ? Colors.white : Colors.red,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.share,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const StoriesStack(),
                        ...List.generate(15, (index) => const StoriesCard())
                      ],
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [...List.generate(10, (index) => PostCard())],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
