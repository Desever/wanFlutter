import 'package:flutter/material.dart';
//swiper
import 'package:flutter_swiper/flutter_swiper.dart';


class IndexTab extends StatefulWidget{
  @override
  IndexTabState createState() => IndexTabState();
}

//状态
class IndexTabState extends State<IndexTab> {

  //顶部轮播图数据
  List<Widget> imageList = List();




  @override
  void initState() {
    //轮播图数据
    initBannerData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:null,
      body:this.returnHomeListViewBox()
    );
  }

  //首页列表容器
  ListView returnHomeListViewBox(){
    return new ListView(
      children: <Widget>[
        returnTopBanner()
      ],
    );
  }



  //顶部banner
  Container returnTopBanner(){
    return new Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Swiper(
          itemCount:1,
          itemBuilder: _swiperBuilder,
          pagination: SwiperPagination(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
              builder: DotSwiperPaginationBuilder(
                  color: Colors.black54,
                  activeColor: Colors.white
              )
          ),
          controller: SwiperController(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) => print('点击了第$index')
      )
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }

  //初始化顶部轮播图数据
  initBannerData(){
    imageList.add(Image.network(
        'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg',
        fit: BoxFit.fill,
    ));
  }








}
