import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 232, 232, 1.0),
      appBar: _buildAppBar(context),
      body: ListView(
        children: [
          _buildRecentSearch(),
          _buldRecentSee(),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 30, child: Image.asset("assets/logo.png")),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onTap: () {
                      Navigator.pushNamed(context, "/search");
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(232, 232, 232, 1.0),
                      contentPadding: EdgeInsets.only(left: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 5),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.grey)),
              )
            ]),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.grey),
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text("현재 지원하지 않는 기능입니다."),
                        actions: [
                          CupertinoDialogAction(
                            child: Text("확인"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              iconSize: 25,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRecentSearch() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "최근 검색",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("전체 삭제",
                      style: TextStyle(
                        fontSize: 16,
                      )),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "최근 검색 내역이 없습니다.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black12,
          ),
          Container(
            width: double.infinity,
            height: 5,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buldRecentSee() {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "최근 본 상품",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                _buildRecentSeeBook("book06"),
                SizedBox(width: 20),
                _buildRecentSeeBook("book12"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentSeeBook(var img) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
            width: 120,
            child: Image.asset('assets/$img.jpg')),
        Container(
          alignment: AlignmentDirectional.center,
          width: 30,
          height: 30,
          color: Color.fromRGBO(0, 0, 0, 0.5),
          child: Text(
            "X",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
