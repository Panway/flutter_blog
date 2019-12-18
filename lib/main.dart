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
        fontSize: 14.0,
        // fontStyle: FontStyle.italic,
        fontFamily: 'SF Pro SC,sans-serif',
        fontWeight: FontWeight.w200,
        color: Colors.white70);
    double screenWidth = MediaQuery.of(context).size.width;
    // var halfWidth = screenWidth> 400?screenWidth/2:screenWidth;
    bool tooWild = screenWidth > 700;
    print("screenWidth=" + screenWidth.toString());
    //ListView要用Scafford包起来，不然文字会出现两个黄色下划线
    return Scaffold(
      body: Scrollbar(
          child: ListView(children: [
        Container(
          height: 44,
          padding: const EdgeInsets.only(left: 18),
          color: Colors.black,
          child: Row(
              // backgroundColor: Colors.white,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                        color: Colors.white)),
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
          // color: Colors.red,
          // height: 200,
          child: ShoppingListItem(
            product: new Product(
                imageURL:
                    "https://www.apple.com.cn/cn/home/images/promos/watch-series-5/tile__cauwwcyyn9hy_medium_2x.jpg",
                // imageURL:"https://www.apple.com.cn/cn/home/images/heroes/holiday-2019/set-a/endframe__dpqgyay5g30i_large_2x.jpg",
                title: "来这里，包好礼。",
                subTitle: "",
                desc: ""),
            lightBackground: true,
            fullWidth: true,
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
            lightBackground: false,
            onCartChanged: null,
            fullWidth: true,
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
            lightBackground: true,
            onCartChanged: null,
            fullWidth: true,
          ),
        ),
        Wrap(
          spacing: 0.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            ShoppingListItem(
              product: new Product(
                imageURL:
                    "https://www.apple.com.cn/cn/home/images/promos/watch-series-5/tile__cauwwcyyn9hy_medium_2x.jpg",
                title: " Watch Series 5",
                subTitle: "全天候视网膜显示屏，全新登场。\n这块表，好不一样。",
                // desc: ""
              ),
              lightBackground: true,
              onCartChanged: null,
              fullWidth: !tooWild,
            ),
            ShoppingListItem(
              product: new Product(
                imageURL:
                    "https://www.apple.com.cn/cn/home/images/promos/ipad/tile__cauwwcyyn9hy_medium_2x.jpg",
                title: "新款 iPad",
                subTitle: "这个电脑，拿掉了电脑的条条框框。",
                // desc: ""
              ),
              lightBackground: true,
              onCartChanged: null,
              fullWidth: !tooWild,
            ),
            ShoppingListItem(
              product: new Product(
                imageURL:
                    "https://www.apple.com.cn/v/home/er/images/promos/mac-pro/tile__cauwwcyyn9hy_medium_2x.jpg",
                title: "Mac Pro",
                subTitle: "以实力刷新一切。",
                // desc: ""
              ),
              lightBackground: true,
              onCartChanged: null,
              fullWidth: !tooWild,
            ),
            ShoppingListItem(
              product: new Product(
                imageURL:
                    "https://www.apple.com.cn/v/home/er/images/promos/pro-display-xdr/tile__cauwwcyyn9hy_medium_2x.jpg",
                title: "Pro Display XDR",
                subTitle: "征服双眼，震撼人心。",
                // desc: ""
              ),
              lightBackground: true,
              onCartChanged: null,
              fullWidth: !tooWild,
            ),
            ShoppingListItem(
              product: new Product(
                imageURL:
                    "https://www.apple.com.cn/v/home/er/images/promos/macbook-pro-16/tile__cauwwcyyn9hy_medium_2x.jpg",
                title: "MacBook Pro",
                subTitle: "高能，召唤高手。",
                // desc: ""
              ),
              lightBackground: true,
              onCartChanged: null,
              fullWidth: !tooWild,
              imagePadding: EdgeInsets.only(top: 166, left: 22, right: 22),
            ),
            ShoppingListItem(
              product: new Product(
                imageURL:
                    "https://www.apple.com.cn/v/home/er/images/promos/airpods-pro/tile__cauwwcyyn9hy_medium_2x.jpg",
                title: "AirPods Pro",
                subTitle: "妙得不同凡响。",
                // desc: ""
              ),
              lightBackground: false,
              onCartChanged: null,
              fullWidth: !tooWild,
              imagePadding: EdgeInsets.only(top: 133, left: 44, right: 44),
            ),
          ],
        ),

        Container(
          color: Color(0xfff5f5f7),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
            child: Text(
              "1. 所示的 iPhone 11 Pro 64GB 机型价格是使用 iPhone X 64GB 机型进行折抵换购的价格。所示的 iPhone 11 64GB 机型价格是使用 iPhone 8 Plus 64GB 机型进行折抵换购的价格。上述所示分期付款金额仅为折抵换购后使用特定期数免息分期付款估算得出的示例（仅显示整数数额，未显示小数点以后的金额)，实际支付金额以银行或花呗账单为准。银行和花呗的免息分期期数可能有所不同。折抵服务的购新价格仅可在限定时间内使用，并且要求用于购买新款 iPhone，以限制条款为准。实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。银行或花呗可能要求你的可用信用额度大于所购买产品的总金额，才能使用分期付款服务。有关信用卡或花呗分期服务的申请及使用问题，请与银行或花呗联系，Apple 对此不做任何承诺和保证。Apple 的折抵换购服务为 Apple 与 Apple 折抵服务合作伙伴共同推出，年满 18 周岁及以上者才能享受此项折抵换购服务。店内折抵换购需出示政府颁发并附有照片的有效身份证件 (当地法律可能会要求存储该信息)。可能需要遵守 Apple 或 Apple 折抵服务合作伙伴的其他条款。本折抵换购服务不能与 Apple 的其他优惠或折扣活动同时使用。如需了解更多免息分期付款信息，请点击此处。",
              style: TextStyle(
                fontSize: 12.0,
                // backgroundColor: Color(0xfff5f5f7),
                // fontWeight: FontWeight.bold,
                color: Color(0xff86868b),
              ),
            ),
          ),
        ),
        // Center(child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("made with ❤️ by WeirdPan"),
            FlutterLogo(
              size: 30,
            ),
          ],
        )

        // ),
        // Align(
        //   widthFactor: 2,
        //   heightFactor: 2,
        //   alignment: Alignment.center,
        //   child: FlutterLogo(
        //     size: 60,
        //   ),
        // ),
      ])),
    );
  }
}

class Product {
  const Product({this.imageURL, this.title, this.subTitle, this.desc});
  final String imageURL;
  final String title;
  final String subTitle;
  final String desc;
}

typedef void CartChangedCallback(Product product, bool lightBackground);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem(
      {Product product,
      this.lightBackground,
      this.fullWidth,
      this.imagePadding,
      this.onCartChanged})
      : product = product,
        super(key: ObjectKey(product));

  final Product product;
  final bool lightBackground;
  final bool fullWidth;
  final EdgeInsetsGeometry imagePadding;
  final CartChangedCallback onCartChanged;

  @override
  Widget build(BuildContext context) {
    print("======" + product.subTitle.length.toString());
    double screenWidth = MediaQuery.of(context).size.width;
    // var halfWidth = screenWidth> 400?screenWidth/2:screenWidth;
    // bool tooWild = screenWidth > 500;
    return Stack(
      // backgroundColor: Colors.green,
      alignment: AlignmentDirectional.topCenter, //const Alignment(0.6, 0.6),
      // fit: StackFit.loose,
      children: [
        /*
        Container(
            constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 450.0 //最小高度为50像素
                ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 16.0 * 9.0,
            // child: AspectRatio(
            //     aspectRatio: 16.0 / 9.0, // 设置宽高��为16:9
            child: Image.network(
              product.imageURL,
              fit: BoxFit.cover, //BoxFit.fill,
            )
            // )
            ),
            */

        Container(
          width: fullWidth ? screenWidth : screenWidth / 2,
          constraints: BoxConstraints(
            // minWidth: double.infinity, //宽度尽可能大
            minHeight: fullWidth ? 450.0 : 0, //最小高度为50像素
          ),
          color: lightBackground ? Colors.white : Colors.black, //Colors.green,
          padding: imagePadding == null
              ? EdgeInsets.fromLTRB(0, 0, 0, 0)
              : imagePadding,
          child: AspectRatio(
              aspectRatio: fullWidth ? 16 / 9 : 1,
              child: Image.network(
                product.imageURL,
                fit: imagePadding == null ? BoxFit.cover : BoxFit.contain,
              )),
        ),
        Container(
          width: fullWidth ? screenWidth : screenWidth / 2,
          child: Column(children: [
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
            _ppText(null),
            _ppText(product.subTitle,
                padding: const EdgeInsets.only(top: 5.0),
                fontSize: 15.0,
                textColor: _getColor(context)),
            _ppText(
              product.desc,
              padding: const EdgeInsets.only(top: 8.0),
              fontSize: 12.0,
              textColor: Colors.grey,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8.0),
                child: Text(
                  "进一步了解>",
                  style: TextStyle(
                    fontSize: 12.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8.0),
                child: Text(
                  "购买>",
                  style: TextStyle(
                    fontSize: 12.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ]),
          ]),
        ),
      ],
    );
  }

  Widget _ppText(String text,
      {Color textColor,
      Color backgroundColor,
      double fontSize,
      EdgeInsetsGeometry padding}) {
    if (text != null && text.length > 0) {
      return Padding(
        // color: Colors.green,
        padding: padding == null ? EdgeInsets.fromLTRB(0, 0, 0, 0) : padding,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize == null ? 16 : fontSize,
            backgroundColor:
                backgroundColor == null ? Colors.transparent : backgroundColor,
            // fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.red,
        child: null,
      );
    }
  }

  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different parts of the tree
    // can have different themes.  The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return lightBackground
        ? Colors.black
        : Colors.white; //Theme.of(context).primaryColor;
  }
}
