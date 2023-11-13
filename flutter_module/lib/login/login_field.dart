import 'package:flutter/material.dart';
class LoginFieldView extends StatefulWidget {

  const LoginFieldView({super.key, required this.fieldTextString, required this.onSubmitted});
  final String fieldTextString;
  final Function(String str) onSubmitted;

  // final Function(String) onSubmitted;
  @override
  State<LoginFieldView> createState() => _LoginFieldViewState();
}

class _LoginFieldViewState extends State<LoginFieldView> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode(); //创建一个焦点监听
  @override
  void initState() {
    super.initState();
    // 添加焦点变化监听器
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        // 当焦点离开时触发
        widget.onSubmitted(_controller.text);
      }
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    _focusNode.removeListener(() {}); // 移除监听器
    _focusNode.dispose(); // 释放 FocusNode
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //username
          Text(widget.fieldTextString, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
          const SizedBox(height: 9),
          TextField(
            controller: _controller,
            focusNode: _focusNode,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)), // 未获得焦点时的边框样式
              ),
              focusedBorder: OutlineInputBorder( // 焦点状态下的边框
                borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              ),
            ),
            onSubmitted: (String value) {
              widget.onSubmitted(value);
            },
          )
        ],
      ),
    );
  }
}
