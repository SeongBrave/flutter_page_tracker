import 'package:flutter/material.dart';
import 'package:flutter_page_tracker/flutter_page_tracker.dart';

// 页面
import 'home_page.dart';
import 'detail_page.dart';
import 'pageview_wrapper_page.dart';
import 'tabview_page.dart';
import 'pageview_in_tabview_page.dart';
import 'pageview_mixin_page.dart';

void main() => runApp(TrackerRouteObserverProvider(
      child: PageLoadProvider(env: "dev", child: MyApp()),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            button: TextStyle(fontSize: 30),
            headline4: TextStyle(fontSize: 40),
            headline3: TextStyle(fontSize: 40),
            headline2: TextStyle(fontSize: 40),
            headline1: TextStyle(fontSize: 40),
            subtitle1: TextStyle(fontSize: 40),
            bodyText1: TextStyle(fontSize: 20, color: Colors.white),
          )),
      navigatorObservers: [TrackerRouteObserverProvider.of(context)!],
      home: MyHomePage(title: 'Flutter_Page_tracker Demo'),
      routes: {
        "home": (_) => MyHomePage(title: 'Flutter_Page_tracker Demo'),
        "detail": (_) => DetailPage(),
        "pageview_mixin": (_) =>
            PageViewMixinPage(title: 'PageView Mixin Demo'),
        "pageview": (_) => PageViewWrapperPage(title: 'PageView Wrapper Demo'),
        "tabview": (_) => TabViewPage(title: 'TabView Demo'),
        "pageviewInTabView": (_) =>
            PageviewInTabviewPage(title: 'Pageview Wraped in TabView demo'),
      },
    );
  }
}
