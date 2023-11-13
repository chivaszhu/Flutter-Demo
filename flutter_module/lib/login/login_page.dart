import 'package:flutter/material.dart';
import 'package:flutter_module/Utils/spx_extension.dart';
import 'package:flutter_module/login/login_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = '';
  String _password = '';
  bool get _isButtonEnabled => _username.isNotEmpty && _password.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color.fromRGBO(247, 247, 252, 1.0),
          child: Column(
            children: [
              const HeaderView(),
              const LoginMessageView(),
              const SizedBox(height: 34),
              LoginFieldView(fieldTextString: "Username", onSubmitted: (String value){
                setState(() {
                  _username = value;
                  print(_username);
                });
              }),
              const SizedBox(height: 34,),
              LoginFieldView(fieldTextString: "Password", onSubmitted: (String value){
                setState(() {
                  _password = value;
                  print(_password);
                });
              }),
              Container(
                margin: EdgeInsets.only(top: 34),
                width: DeviceUtils.getScreenWidth(context) - 34,
                height: 48,
                child: ElevatedButton(
                  onPressed: _isButtonEnabled ? _onLoginPressed : null,
                  child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                  ).copyWith(
                    splashFactory: NoSplash.splashFactory, // 移除波纹效果
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
  void _onLoginPressed() {
    // 登录逻辑
    print("我点击了");
    print('Username: $_username, Password: $_password');
  }
}

class LoginMessageView extends StatelessWidget {
  const LoginMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 18, top: 47),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Please Log In", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
        ),
      )
    );
  }
}

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xffd9d9d9)),
      width: MediaQuery.of(context).size.width,
      height: DeviceUtils.getStatusBarHeight(context) + 44,
      child: Container(
        padding: const EdgeInsets.only(left: 18, bottom: 19),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Driver App", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          ],
        ),
      )
    );
  }
}

