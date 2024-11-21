import 'package:flutter/material.dart';
import 'package:wallpaperapp/view/searchscreen.dart';

class SearchBarWid extends StatefulWidget {
  const SearchBarWid({super.key,});

  @override
  State<SearchBarWid> createState() => _SearchBarWidState();
}

class _SearchBarWidState extends State<SearchBarWid> {
  TextEditingController searchquerycontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: const Color.fromARGB(176, 189, 188, 188),
        border: Border.all(color: const Color.fromARGB(255, 250, 247, 247)),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: searchquerycontroller,
              decoration: const InputDecoration(
                hintText: "Search Wallpaper",
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("searching......");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchScreen(qury: searchquerycontroller.text);
              }));
            },
            child: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
