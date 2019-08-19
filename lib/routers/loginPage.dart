import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/actions/login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565952338993&di=7a252a58bba9680f175f8cbc9ab1916d&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01476f579842940000018c1b6681b3.png%401280w_1l_2o_100sh.png")),
        gradient:
            LinearGradient(colors: [Colors.red, Colors.orange[700]]), //背景渐变
      ),
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        children: <Widget>[
          new CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565948591886&di=d83e361b4e01a77f1a7a960642b694de&imgtype=0&src=http%3A%2F%2Fpic.51yuansu.com%2Fpic3%2Fcover%2F02%2F04%2F34%2F599dd6b2c0a5f_610.jpg",
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: Form(
              key: _formKey, //设置globalKey，用于后面获取FormState
              autovalidate: true, //开启自动校验
              child: Column(
                children: <Widget>[
                  buildNameTextFormField(),
                  buildPasswordTextFormField(),
                  buildLoginButton()
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  TextFormField buildNameTextFormField() {
    return TextFormField(
        autofocus: true,
        controller: _unameController,
        decoration: InputDecoration(
            labelText: "用户名",
            hintText: "请输入用户名",
            labelStyle: TextStyle(color: Colors.white)),
        // 校验用户名
        validator: (v) {
          return null;
        });
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
        controller: _pwdController,
        decoration: InputDecoration(
          labelText: "密码",
          hintText: "请输入密码",
          labelStyle: TextStyle(color: Colors.white),
        ),
        obscureText: true,
        //校验密码
        validator: (v) {
          return null;
        });
  }

  Padding buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: EdgeInsets.all(15.0),
              child: Text("登录"),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: () async {
                var res = await LoginApi.login();
                Fluttertoast.showToast(
                  msg: res.message,
                );
                Navigator.pushNamed(context, "/home");
                //if ((_formKey.currentState as FormState).validate()) {}
              },
            ),
          ),
        ],
      ),
    );
  }
}
