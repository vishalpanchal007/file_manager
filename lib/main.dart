import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  Color color = Color(0xff2c2c2c);
  Color color1 = Color(0xff9b9b9b);
  Color color2 = Color(0xfffcba48);
  List<Choice> choices = [
    Choice(title: 'Android'),
    Choice(title: 'BioData'),
    Choice(title: 'browser'),
    Choice(title: 'com.activision.callofduty.s'),
    Choice(title: 'com.facebook.orca'),
    Choice(title: 'Creative-BiodataMaker'),
    Choice(title: 'DCIM'),
    Choice(title: 'Dcoder'),
    Choice(title: 'Download'),
    Choice(title: 'Dragon Ball Z'),
    Choice(title: 'Lost in Space S01-E01-10'),
    Choice(title: 'Lost in Space S02-E01-10'),
    Choice(title: 'MEGA'),
    Choice(title: 'MidasOversea'),
    Choice(title: 'MIUI'),
    Choice(title: 'MiVideoGlobal'),
    Choice(title: 'Music'),
    Choice(title: 'MXShare'),
    Choice(title: 'PSP'),
    Choice(title: 'Scared Games-Sea'),
    Choice(title: 'Subtitles'),
    Choice(title: 'systemui'),
    Choice(title: 'tencent'),
    Choice(title: 'The Witcher'),
  ];
  List<Choice> choices1 = [
    Choice(
      title: 'Android',
    ),
    Choice(
      title: 'BioData',
    ),
    Choice(
      title: 'browser',
    ),
    Choice(title: 'com.activision.callofduty.shooter'),
    Choice(title: 'com.facebook.orca'),
    Choice(title: 'Creative-BiodataMaker'),
    Choice(title: 'DCIM'),
    Choice(title: 'Dcoder'),
    Choice(title: 'Download'),
    Choice(title: 'Dragon Ball Z'),
    Choice(title: 'Lost in Space S01-E01-10'),
    Choice(title: 'Lost in Space S02-E01-10'),
    Choice(title: 'MEGA'),
    Choice(title: 'MidasOversea'),
    Choice(title: 'MIUI'),
    Choice(title: 'MiVideoGlobal'),
    Choice(title: 'Music'),
    Choice(title: 'MXShare'),
    Choice(title: 'PSP'),
    Choice(title: 'Scared Games-Sea'),
    Choice(title: 'Subtitles'),
    Choice(title: 'systemui'),
    Choice(title: 'tencent'),
    Choice(title: 'The Witcher'),
  ];
  bool isSelectionMode = false;
  late List<bool> _selected;
  bool selectAll = false;
  final int listLength = 30;
  bool isGridMode = true;
  @override
  void initState() {
    intializeSelection();
    super.initState();
  }

  void intializeSelection() {
    _selected = List<bool>.generate(choices.length, (index) => false);
  }

  void dispose() {
    _selected.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Spacer(
            flex: 1,
          ),
          Icon(Icons.menu),
          Spacer(
            flex: 2,
          ),
          Icon(Icons.watch_later_outlined),
          Spacer(
            flex: 2,
          ),
          Icon(Icons.folder_open_outlined),
          Spacer(
            flex: 2,
          ),
          Icon(Icons.search),
          Spacer(
            flex: 1,
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: double.maxFinite,
                height: 95,
                decoration: BoxDecoration(
                  color: Color(0xff202020),
                  border: Border.all(
                    width: 5,
                    color: Color(0xff2c2c2c),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      child: CircularPercentIndicator(
                        radius: 25,
                        lineWidth: 4,
                        percent: 0.93,
                        center: Text(
                          "93%",
                          style: TextStyle(color: Color(0xfff3b751)),
                        ),
                        progressColor: Color(0xfff3b751),
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Storage",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffb0b0b0),
                                      fontSize: 20),
                                ),
                                margin: EdgeInsets.only(right: 10, bottom: 10),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, bottom: 10),
                                child: RichText(
                                  text: TextSpan(
                                    text: "110.74GB",
                                    style: TextStyle(
                                        color: Color(0xfff3b751),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    children: [
                                      TextSpan(
                                        text: "/118.49GB",
                                        style: TextStyle(
                                            color: Color(0xff6c6c6c),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 100),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color(0xff848484),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, right: 3, left: 5),
              height: 60,
              width: double.infinity,
              color: color,
              child: Row(
                children: [
                  Text(
                    'Internal storage',
                    style: TextStyle(color: Color(0xffb0b0b0), fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: color1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 100 , top: 5),
                        child: isSelectionMode
                            ? IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  setState(() {
                                    isSelectionMode = false;
                                  });
                                  intializeSelection();
                                },
                              )
                            : SizedBox(),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isGridMode = !isGridMode;
                          });
                        },
                        icon: isGridMode
                            ? Icon(
                                Icons.list,
                                size: 25,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.grid_on,
                                size: 25,
                                color: Colors.white,
                              ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            isGridMode
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 85,
                        childAspectRatio: 2 / 6,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 5,
                        mainAxisExtent: 150),
                    shrinkWrap: true,
                    padding: EdgeInsets.only(right: 5, top: 10),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: choices.length,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.folder_sharp,
                                  size: 65,
                                  color: color2,
                                ),
                                Text(
                                  choices[index].title,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  )
                : ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: choices.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.zero,
                          child: ListTile(
                            iconColor: color2,
                            tileColor: color,
                            textColor: Colors.white,
                            focusColor: color,
                            title: Text(choices1[index].title),
                            leading: Icon(
                              Icons.folder_sharp,
                              size: 45,
                            ),
                          ),
                        ),
                      );
                    },
                  )
          ],
        ),
      ),
    );
  }
}

class Choice {
  Choice({this.title = "", this.icon = CupertinoIcons.folder_fill});
  String title = "";
  IconData icon = CupertinoIcons.folder_fill;
}

class Choice1 {
  Choice1({
    this.title = "",
    this.item = "",
  });
  String title = "";
  String item = "";
}
