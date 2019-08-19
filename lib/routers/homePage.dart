import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/stores/homeStore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.name}) : super(key: key);
  final String title;
  final String name;
  _Home createState() => _Home();
}

class _Home extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Observer(
                      builder: (_) => Text(
                            'this is a home page ${homeStore.count}',
                          )),
                )
              ],
            ),
            RaisedButton(
              onPressed: homeStore.add,
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('首页', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
