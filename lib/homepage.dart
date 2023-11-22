import 'package:flutter/material.dart';
import 'firstpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ページ(0)")),
        body: Center(
            /*
          child: TextButton(
            child: Text("Firstページへ遷移する"),
            onPressed: () {
              // （1） 指定した画面に遷移する
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      // （2） 実際に表示するページ(ウィジェット)を指定する
                      builder: (context) => FirstPage()));
            },
          ),
          */
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // * ただのボタン --------------------------------------------------
            ElevatedButton(
              onPressed: () => {
                print('ボタンが押された！'),
              },
              child: Text('ただのボタン'),
            ),
            ElevatedButton(
              onPressed: () {/* ボタンが押された時の処理 */},
              child: Text('背景色を指定したボタン'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, //ボタンの背景色
              ),
            ),
            // * ボタンを押した時に色が変わる --------------------------------------
            ElevatedButton(
              onPressed: () {
                /* ボタンが押された時の処理 */
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // （2） 実際に表示するページ(ウィジェット)を指定する
                        builder: (context) => FirstPage()));
              },
              child: Text(
                'Firstページへ遷移する（押した時赤になる）',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.green, // ボタンを押した時の色
              ),
            ),
            // * ボタンに枠線を付ける ----------------------------------------------
            ElevatedButton(
              onPressed: () {/* ボタンが押された時の処理 */},
              child: Text('枠線付きボタン'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, //ボタンの背景色
                side: BorderSide(
                  color: Colors.blue, // 枠線の色
                  width: 5, // 枠線の太さ
                ),
              ),
            ),
            // * .styleFromコンストラクタでサイズ変更 -----------------------------------------
            ElevatedButton(
              onPressed: () {/* ボタンが押された時の処理 */},
              child: Text('.styleFromコンストラクタでサイズ変更'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 100),
                backgroundColor: Colors.pink,
              ),
            ),
            // * .iconコンストラクタ ------------------------------------------------
            // アイコン付きのボタンを作成できる
            ElevatedButton.icon(
              onPressed: () {/* ボタンが押された時の処理 */},
              icon: Icon(Icons.settings), // 表示するアイコン
              label: Text('.iconコンストラクタ'),
            ),
          ],
        )));
  }
}
