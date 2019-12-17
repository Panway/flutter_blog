import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _headerFont = const TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.white70);
    //ListView要用Scafford包起来，不然文字会出现两个黄色下划线
    return Scaffold(
        body: ListView(children: [
      Container(
        height: 55,
        padding: const EdgeInsets.only(left: 18),
        color: Colors.black87,
        child: Row(
            // backgroundColor: Colors.white,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("", style: _headerFont),
              Center(child: Text("Mac", style: _headerFont)),
              Center(child: Text("iPad", style: _headerFont)),
              Center(child: Text("iPhone", style: _headerFont)),
              Center(child: Text("Watch", style: _headerFont)),
              Center(child: Text("Music", style: _headerFont)),
              Center(child: Text("技术支持", style: _headerFont)),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
            ]),
      ),
      Container(
        color: Colors.white,
        // height: 200,
        child: ShoppingListItem(
          product: new Product(
              imageURL:
                  "https://www.apple.com.cn/cn/home/images/heroes/holiday-2019/set-a/endframe__dpqgyay5g30i_large_2x.jpg",
              title: "来这里，包好礼。",
              subTitle: "",
              desc: ""),
          inCart: true,
          onCartChanged: null,
        ),
      ),
      Container(
        color: Colors.white,
        // height: 200,
        child: ShoppingListItem(
          product: new Product(
              imageURL:
                  "https://www.apple.com.cn/v/home/er/images/heroes/iphone-11-pro/hero__dvsxv8smkkgi_medium_2x.jpg",
              title: "iPhone11 Pro",
              subTitle: "摄像头、显示屏、性能，样样Pro如其名。",
              desc: "折抵换购，仅RMB 258/月或RMB 6199起。"),
          inCart: false,
          onCartChanged: null,
        ),
      ),
      Container(
        color: Colors.white,
        // height: 200,
        child: ShoppingListItem(
          product: new Product(
              imageURL:
                  "https://www.apple.com.cn/v/home/er/images/heroes/iphone-11/hero__dvsxv8smkkgi_medium_2x.jpg",
              title: "Phone11",
              subTitle: "一切都刚刚好。",
              desc: "折抵换购，仅RMB 154/月或RMB 3699起。"),
          inCart: true,
          onCartChanged: null,
        ),
      ),
      // Align(
      //   widthFactor: 2,
      //   heightFactor: 2,
      //   alignment: Alignment.center,
      //   child: FlutterLogo(
      //     size: 60,
      //   ),
      // ),
    ]));
  }
}

class Product {
  const Product({this.imageURL, this.title, this.subTitle, this.desc});
  final String imageURL;
  final String title;
  final String subTitle;
  final String desc;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // backgroundColor: Colors.green,
      alignment: AlignmentDirectional.topCenter, //const Alignment(0.6, 0.6),
      // fit: StackFit.loose,
      children: [
        Container(
            constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 450.0 //最小高度为50像素
                ),
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.width / 16.0 * 9.0,
            // child: AspectRatio(
            //     aspectRatio: 16.0 / 9.0, // 设置宽高比为16:9
            child: Image.network(
              product.imageURL,
              fit: BoxFit.cover,//BoxFit.fill,
            )
            // )
            ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Text(
              product.title,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: _getColor(context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              product.subTitle,
              style: TextStyle(
                fontSize: 15.0,
                // fontWeight: FontWeight.bold,
                color: _getColor(context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              product.desc,
              style: TextStyle(
                fontSize: 12.0,
                // fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          )
        ]),
      ],
    );
  }

  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different parts of the tree
    // can have different themes.  The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return inCart
        ? Colors.black
        : Colors.white; //Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }
}
