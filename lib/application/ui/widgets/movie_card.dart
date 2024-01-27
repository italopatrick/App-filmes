import 'package:app_filmes/application/ui/filmes_app_icons_icons.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 158,
      height: 280,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      'https://media.fstatic.com/-lxBRHb2HqPYiOlAjXlrJ5uDMZM=/322x478/smart/filters:format(webp)/media/movies/covers/2019/08/Joker-2019-Poster-joker-2019-42983372-1382-2048.jpg',
                      width: 148,
                      height: 184,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                 const Text(
                  'Coringa',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const Text(
                  '2019',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            right: -10,
            child: Material(
              elevation: 5,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                  height: 30,
                  child: IconButton(
                    iconSize: 13,
                    onPressed: () {},
                    icon: const Icon(
                      FilmesAppIcons.heart,
                      color: Colors.grey,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
