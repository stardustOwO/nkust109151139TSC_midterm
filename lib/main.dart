import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Midterm'),
        ),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
              if (index != 0) {
                player.stop();
              }
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {
  final String s1 = '從小就對於電子產品的高度熱忱，正因為擁有這份熱情，'
  '才毅然決然地踏入這個世界—這個由0和1組成的世界。'
  '當初的我竟然會因為Minecraft這個「遊戲產品」而進'
  '入數位化的世界，Minecraft是一款「沒有做不到，只'
  '有想不到」的「遊戲產品」，那時的我為了增加使用體'
  '驗，而首次接觸了程式語言—JAVA。自從那時，我便開'
  '始搜尋各種相關資訊，開始認識更多的程式語言，例'
  '如:C語言。隨著時間繼續推演，我接觸到支撐著軟體運'
  '行的硬體設備、電子產品。在那時，我看到了屬於我目'
  '標，通往目標的那條「虛擬」之路，是將來我必經的路'
  '程。';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //先放個標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(
              s1,
              style: TextStyle(fontSize: 20),
            ),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(
            height: 30,
          ),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("近程目標"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 先修課程'),
                    Text('2. 外語學習'),
                    Text('3. 打工'),
                    Text('4. 駕照'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("中程目標"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 證照考取'),
                    Text('2. 人際'),
                    Text('3. 繼續打工'),
                    Text('4. 參加海外實習'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("遠程目標"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 就讀研究所'),
                    Text('2. 進入職場'),
                  ],
                ),
              ),
            ],
          ),


          Row(),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大一時期"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 多益550'),
                    Text('2. 程式語言'),
                    Text('3. 計算機'),
                    Text('4. 人際關係'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大二時期"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 多益650'),
                    Text('2. 組合語言'),
                    Text('3. 考取駕照'),
                    Text('4. 人際關係'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大三時期"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 多益750'),
                    Text('2. 機器學習'),
                    Text('3. 作業系統'),
                    Text('4. 人際關係 '),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大四時期"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 多益850'),
                    Text('2. 組合語言'),
                    Text('3. 研究所'),
                    Text('4. 人際關係'),
                  ],
                ),
              ),
            ],
          ),

          Row(),
        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('資料探勘'),
    );
  }
}
