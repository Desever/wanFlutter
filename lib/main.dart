
import 'package:flutter/material.dart';
//首页tab
import 'View/TabView/IndexTab.dart';
//热门
import 'View/TabView/HotTab.dart';
void main(){
  runApp(
      new MaterialApp(
          title:'tabdemo',
          home:new HomePage()
      )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() =>new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  //Tab页的控制器，可以用来定义Tab标签和内容页的坐标
  TabController tabcontroller;
  @override
  void initState() {
    super.initState();
    tabcontroller = new TabController(
        length:2,   //Tab页的个数
        vsync: this //动画效果的异步处理，默认格式
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new TabBarView(
          controller: tabcontroller,
          children: <Widget>[
            new IndexTab(),
            new HotTab()
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blueAccent,
          child: new TabBar(
            controller: tabcontroller,
            tabs: <Tab>[
              new Tab(text: "第一个",icon: new Icon(Icons.android)),
              new Tab(text: "第一个",icon: new Icon(Icons.android))
            ],

            labelColor: Colors.amber,
            unselectedLabelColor: Colors.black,
          ),
        )
    );
  }

  //组件即将销毁时调用
  @override
  void dispose() {
    //释放内存，节省开销
    tabcontroller.dispose();
    super.dispose();
  }
}